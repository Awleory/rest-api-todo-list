package service

import (
	"github.com/Awleory/todo-app"
	"github.com/Awleory/todo-app/pkg/repository"
)

type Authorization interface {
	CreateUser(todo.User) (int, error)
}

type TodoList interface {
}

type TodoItem interface {
}

type Service struct {
	Authorization
	TodoList
	TodoItem
}

func NewService(repos *repository.Repository) *Service {
	return &Service{
		Authorization: NewAuthService(repos.Authorization),
	}
}
