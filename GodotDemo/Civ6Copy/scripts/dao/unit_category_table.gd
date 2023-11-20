class_name UnitCategoryTable
extends MySimSQL.EnumTable


enum Enum {
	GROUND_FORCE, # 地面部队
	SEA_FORCE, # 海上部队
	AIR_FORCE, # 空中部队
	ASSISTANT_FORCE, # 支援部队
	CITIZEN, # 平民
	TRADER, # 商人
	RELIGIOUS, # 宗教单位
}


func _init() -> void:
	super._init()
	elem_type = UnitCategoryDO
	
	for k in Enum.keys():
		var do := UnitCategoryDO.new()
		do.enum_name = k
		do.enum_val = Enum[k]
		match do.enum_val:
			Enum.GROUND_FORCE:
				do.view_name = "地面部队"
				do.icon = "res://assets/self_made_svg/unit_background/unit_ground_military_background.svg"
			Enum.SEA_FORCE:
				do.view_name = "海上部队"
				do.icon = "res://assets/self_made_svg/unit_background/unit_sea_military_background.svg"
			Enum.AIR_FORCE:
				do.view_name = "空中部队"
				do.icon = "res://assets/self_made_svg/unit_background/unit_ground_military_background.svg"
			Enum.ASSISTANT_FORCE:
				do.view_name = "支援部队"
				do.icon = "res://assets/self_made_svg/unit_background/unit_assistant_background.svg"
			Enum.CITIZEN:
				do.view_name = "平民"
				do.icon = "res://assets/self_made_svg/unit_background/unit_citizen_background.svg"
			Enum.TRADER:
				do.view_name = "商人"
				do.icon = "res://assets/self_made_svg/unit_background/unit_trader_background.svg"
			Enum.RELIGIOUS:
				do.view_name = "宗教单位"
				do.icon = "res://assets/self_made_svg/unit_background/unit_religious_background.svg"
		super.init_insert(do)
