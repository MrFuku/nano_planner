import NanoPlanner.Repo
alias NanoPlanner.PlanItem

time0 = DateTime.from_unix!(0)
insert! %PlanItem{
  name: "読書",
  description: "「走れメロス」を読む",
  starts_at: time0,
  ends_at: time0
}

insert! %PlanItem{
  name: "買い物",
  description: "洗剤を買う",
  starts_at: time0,
  ends_at: time0
}

insert! %PlanItem{
  name: "帰省",
  description: "新幹線の指定席を取る。\nお土産を買う。",
  starts_at: time0,
  ends_at: time0
}
