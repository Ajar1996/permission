package com.ajar.springbootshiro.model;

import lombok.Data;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.*;

/**
 * @description:出入库
 * @author: Ajar
 * @time: 2019/12/8 18:30
 */
@Data
@Entity
@Table(name = "circulate")
@DynamicInsert
@DynamicUpdate
public class Circulate {

    /**
     * 产品唯一id
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    /**
     * 产品id
     */
    private String equipment_id;

    /**
     * 借用/归还人姓名
     */
    private String name;

    /**
     * 部门
     */
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
    private String type;

}
