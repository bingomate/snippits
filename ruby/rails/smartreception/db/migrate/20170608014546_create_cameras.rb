class CreateCameras < ActiveRecord::Migration[5.0]
  def change
    create_table :cameras do |t|
      t.string :Make
      t.string :Model
      t.string :DisplayName
      t.string :Description
      t.string :NetworkAddress
      t.string :Port
      t.string :Username
      t.string :Password
      t.string :SkypeUsername
      t.string :CustomerId
      t.string :FlipX
      t.string :FlipY
      t.string :Rotate90
      t.string :Sensitivity
      t.string :MaxFrameRate
      t.string :Door1_Id
      t.string :Door1_Name
      t.string :Door1_Device
      t.string :Door2_Id
      t.string :Door2_Name
      t.string :Door2_Device
      t.string :LocationName
      t.string :LocationAddress
      t.string :LocationCity
      t.string :LocationState
      t.string :LocationZip
      t.string :EmergencyContact1Name
      t.string :EmergencyContact1Phone
      t.string :EmergencyContact2Name
      t.string :EmergencyContact2Phone
      t.string :TimeZone
      t.string :CreatedBy
      t.string :DateCreated
      t.string :ModifiedBy
      t.string :DateModified
      t.string :DeletedBy
      t.string :DateDeleted
      t.string :AlarmFilePath
      t.string :RSBInstanceId
      t.string :Door1_Status
      t.string :Door2_Status

      t.timestamps
    end
  end
end
