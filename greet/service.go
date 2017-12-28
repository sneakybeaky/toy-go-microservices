package greet

import (
	"fmt"
)

// GreetingService provides operations to greet people.
type GreetingService interface {
	Greet(string) (string, error)
}

type greetingService struct{}

func (greetingService) Greet(s string) (string, error) {
	return fmt.Sprintf("Hello %s", s), nil
}

// GreetingMiddleware is a chainable behavior modifier for GreetingService.
type ServiceMiddleware func(GreetingService) GreetingService
