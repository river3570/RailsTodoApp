module TodosHelper
    def completed_label(completed)
        completed ? "完了" : "未完了"
    end
end