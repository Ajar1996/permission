package com.ajar.springbootshiro.from;

import lombok.Data;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.validator.constraints.Length;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;

/**
 * @description:修理/报废
 * @author: Ajar
 * @time: 2019/12/8 18:22
 */
@Data
public class RepairFrom {
    /**
     * 主键id
     */
    private Integer id;

    /**
     * 申请人姓名
     */
    @Length(max = 32,message = "长度不能超过32位")
    @NotEmpty(message = "姓名不能为空")
    private String name;

    /**
     * 申请人手机
     */
    @Length(max = 32,message = "长度不能超过32位")
    @NotEmpty(message = "手机不能为空")
    private String phone;

    /**
     * 申返修地址
     */
    @Length(max = 32,message = "长度不能超过32位")
    @NotEmpty(message = "地址不能为空")
    private String address;

    /**
     * 原因
     */
    @Length(max = 32,message = "长度不能超过32位")
    @NotEmpty(message = "原因不能为空")
    private String reason;

    /**
     * 设备
     */
    @Length(max = 32,message = "长度不能超过32位")
    @NotEmpty(message = "设备不能为空")
    private String equipment_id;

    /**
     * 紧急程度
     */
    private String level;

    /**
     * 备注
     */
    private String remark;

    /**
     * 申请时间
     */
    private String application_time;

    /**
     * 修理时间
     */
    private String repair_time;

    /**
     * 发出时间
     */
    private String sent_time;

    /**
     * 状态
     * 0：申请状态
     * 1：确认状态
     * 2：修理状态
     * 3：寄回状态
     */
    private String status;

}
