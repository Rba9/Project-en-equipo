class ProjectsWorkersController < ApplicationController
        def create
            project = Project.find(params[:project_id])
            worker = Worker.find_or_create_by(name: params[:worker][:name])
            if project.workers.include?(worker)
                notice = {notice: 'Relacion ya existe'}
            else
                project.workers << worker
                notice = {notice: 'Relacion agregada'}
            end
            project.save
            redirect_to root_path, notice
        end
        def destroy
            project = Project.find(params[:project_id])
            worker = Worker.find(params[:worker_id])
            project.workers.delete(worker)
            redirect_to root_path, {notice: 'Trabajador quitado del proyecto'}
        end
    end
    
