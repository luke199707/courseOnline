package com.lc.courseonline.mapper;

import com.lc.courseonline.entity.CourseTeacher;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import java.util.List;
import java.util.Map;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author zhangjunhui
 * @since 2022-08-11
 */
public interface CourseTeacherMapper extends BaseMapper<CourseTeacher> {

    List<CourseTeacher> selectCourseTeacherByConditionForPage(Map<String, Object> map);

    int selectCountOfCourseTeacherByCondition(Map<String, Object> map);

    int deleteByCourseId(String courseid);
}
