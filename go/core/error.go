package core

type StarTrekError struct {
	IsStarTrekError bool
	Sdk              string
	Code             string
	Msg              string
	Ctx              *Context
	Result           any
	Spec             any
}

func NewStarTrekError(code string, msg string, ctx *Context) *StarTrekError {
	return &StarTrekError{
		IsStarTrekError: true,
		Sdk:              "StarTrek",
		Code:             code,
		Msg:              msg,
		Ctx:              ctx,
	}
}

func (e *StarTrekError) Error() string {
	return e.Msg
}
