package com.ajar.springbootshiro.from;

import lombok.Data;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.validator.constraints.Length;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;

/**
 * 产品
 *
 */
@Data
public class EquipmentFrom {

    /**
     * 产品唯一id
     */
    private Integer id;

    /**
     * 产品名称
     */
    @Length(max = 32,message = "长度不能超过32位")
    @NotEmpty(message = "姓名不能为空")
    private String name;

    /**
     * 产品类型
     */
    @Length(max = 32,message = "长度不能超过32位")
    @NotEmpty(message = "产品类型不能为空")
    private String brand_id;

}
