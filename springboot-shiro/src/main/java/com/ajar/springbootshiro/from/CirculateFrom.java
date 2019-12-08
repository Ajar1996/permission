package com.ajar.springbootshiro.from;

import lombok.Data;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.Range;

import javax.persistence.*;
import javax.validation.constraints.Digits;
import javax.validation.constraints.NotEmpty;

/**
 * @description:出入库
 * @author: Ajar
 * @time: 2019/12/8 18:30
 */
@Data
public class CirculateFrom {


    private Integer id;

    /**
     * 产品id
     */
    private String equipment_id;

    /**
     * 借用/归还人姓名
     */
    @Length(max = 32,message = "长度不能超过32位")
    @NotEmpty(message = "姓名不能为空")
    private String name;

    /**
     * 部门
     */
    @Length(max = 32,message = "长度不能超过32位")
    @NotEmpty(message = "部门名称不能为空")
    private String department;

    /**
     * 出入库时间
     */
    private String time;

    /**
     * 状态：
     * 0：出库
     * 1：入库
     */

    @Digits(integer=2,fraction=2,message = "类型必须为整数")
    @Range(min = 0,max = 1,message = "等级系数在0到1之间")
    private String type;
}
