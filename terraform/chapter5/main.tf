module "file_creator_instance" {
    source = "./modules/localfile_creator"

    file_content    = "Hello from the root module"
    file_name       = "my_test_file.txt"

}

output "created_file_path" {
    description = "Path to the file created by the module."
    value       = module.file_creator_instance.filename
}