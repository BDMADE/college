class CreateJoinTableAdmissionFeesStatusesTuitionFees < ActiveRecord::Migration[5.0]
  def change
    create_join_table :admission_fees_statuses, :tuition_fees, table_name: :admin_admission_fees_statuses_admin_tuition_fees do |t|
      t.index [:admission_fees_status_id, :tuition_fee_id], name: :index_admin_admission_fees_statuses_tuition_fees
      # t.index [:tuition_fee_id, :admission_fees_status_id]
    end
  end
end
