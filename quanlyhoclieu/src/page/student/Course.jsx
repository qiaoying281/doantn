import React, { useState, useEffect } from 'react';
import { Col, Pagination, Row } from 'antd';
import UilSearch from '@iconscout/react-unicons/icons/uil-search';
import { PageHeader } from '../../components/page-headers/page-headers';
import CourseCard from '../../components/cards/CourseCard';
import { StudentApi } from '../../config/api/student/StudentApi';
import { PaginationStyle } from '../../container/styled';

const PageRoutes = [
  {
    path: 'student',
    breadcrumbName: 'Home',
  },
  {
    path: 'course',
    breadcrumbName: 'Courses',
  },
];
function Course() {
  const [pagination, setPagination] = useState({
    pageNumber: 1,
    pageSize: 100,
  });
  const [courses, setCourses] = useState([]);
  const [data, setData] = useState([]);
  useEffect(() => {
    async function fetchData() {
      try {
        setPagination({
          pageNumber: 1,
          pageSize: 100,
        });
        const res = await StudentApi.getCourse(pagination);
        const totalRes = await StudentApi.getAll(pagination);
        setCourses(res.data.data);
        setData(res.data.data);
        localStorage.setItem('courses', JSON.stringify(totalRes.data.data));
      } catch (error) {
        alert('hehe');
      }
    }
    fetchData();
  }, []);

  // const onShowSizeChange = (current, pageSize) => {
  //   setState({ ...state, current, pageSize });
  // };

  // const onHandleChange = (current, pageSize) => {
  //   setState({ ...state, current, pageSize });
  // };
  const onChangeSearch = (event) => {
    if (event.target.value.length > 0) {
      const filter = courses.filter((x) => x.courseName.toLowerCase().includes(event.target.value.toLowerCase()));
      setData(filter);
    } else setData(courses);
  };
  return (
    <>
      <PageHeader
        className="flex items-center justify-between px-8 xl:px-[15px] pt-2 pb-6 sm:pb-[30px] bg-transparent sm:flex-col"
        title="Course"
        routes={PageRoutes}
      />
      <main className="min-h-[715px] lg:min-h-[580px] px-8 xl:px-[15px] pb-[30px] bg-transparent">
        <Row gutter={25} className="mt-sm-10">
          <Col xs={24} className="mb-[20px]">
            <div className=" max-w-[400px] bg-white border-4 rounded-[12px]">
              <div className="px-[20px] flex items-center">
                <UilSearch />
                <input
                  placeholder="Course name"
                  className="outline-none py-[10px] ml-[10px] w-[100%]"
                  onChange={onChangeSearch}
                />
              </div>
            </div>
          </Col>
          {data.map((value, index) => (
            <CourseCard key={index} courseData={value} />
          ))}
          <Col xs={24} className="mt-[30px]">
            <>
              {courses.length ? (
                <PaginationStyle>
                  <div className="ant-pagination-custom-style text-end">
                    <Pagination
                      // onChange={onHandleChange}
                      // onShowSizeChange={onShowSizeChange}
                      pageSize={10}
                      defaultCurrent={1}
                      total={courses.length}
                    />
                  </div>
                </PaginationStyle>
              ) : null}
            </>
          </Col>
        </Row>
      </main>
    </>
  );
}

export default Course;
