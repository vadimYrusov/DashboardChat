<#macro login path isRegisterForm>
    <form action="${path}" method="post" xmlns="http://www.w3.org/1999/html">
        <div class="col-sm-6">
            <label class="form-label"> User Name : </label>
            <div class="col-sm-10">
                <input type="text" name="username" class="form-control" placeholder="User name"/>
            </div>
        </div>
        <div class="col-sm-6" >
            <label> Password: </label>
            <div class="col-sm-10">
                <input type="password" name="password" class="form-control" placeholder="Password"/>
            </div>
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <div class="mb-3"></div>
        <button class="btn btn-primary" type="submit"/><#if isRegisterForm>Create<#else>Sign In</#if></button>
        <div class="mb-3"></div>
        <#if !isRegisterForm><a href="/registration">Add new User</a></#if><br>
    </form>
</#macro>

<#macro logout>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <button class="btn btn-primary" type="submit"/>Sign out</button>
    </form>
</#macro>

