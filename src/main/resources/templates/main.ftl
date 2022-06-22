<#import "parts/common.ftl" as c>

<@c.page>
    <div class="input-group mb-3">
        <form method="get" action="/main" class="form-inLine">
            <input class="input-group-text" type="text" name="filter" value="${filter?ifExists}"
                   placeholder="Search by tag">
            <#--            <button type="submit" class="btn btn-primary">Search</button>-->
        </form>
    </div>

<#--    <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">-->
<#--        Link with href-->
<#--    </a>-->

<#--    <div class="collapse" id="collapseExample">-->
<#--        <div class="form-group">-->
<#--        <form method="post" enctype="multipart/form-data">-->
<#--            <input type="text" class="form-control" name="text" placeholder="Enter your message">-->
<#--            <input type="text" class="form-control" name="tag" placeholder="Tag">-->
<#--                <div class="custom-life">-->
<#--                    <input type="file" name="file" id="custom-life">-->
<#--                    <label class="custom-file-label" for="custom-life">Choose file</label>-->
<#--                </div>-->
<#--            <input type="hidden" name="_csrf" value="${_csrf.token}" />-->
<#--            <button type="submit" class="btn btn-primary">Add</button>-->
<#--        </form>-->
<#--        </div>-->
<#--    </div>-->

    <p>
        <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false"
           aria-controls="collapseExample">
            Link with href
        </a>
    </p>
    <div class="collapse" id="collapseExample">
        <div class="card card-body">
            <form method="post" enctype="multipart/form-data">
                <input type="text" class="input-group-text mb-3" name="text" placeholder="Enter your message">
                <input type="text" class="input-group-text mb-3" name="tag" placeholder="Tag">
                <div class="mb-3">
                    <input class="form-control" type="file" id="formFile">
                </div>
                <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                <button type="submit" class="btn btn-primary">Add</button>
            </form>
        </div>
    </div>


    <div class="row row-cols-1 row-cols-md-3 g-4">
        <#list messages as message>
            <div class="card my-3">
                <#if message.filename??>
                    <img src="/img/${message.filename}" class="card-img-top">
                </#if>
                <div class="m-2">
                    <span>${message.text}</span>
                    <i>${message.tag}</i>
                </div>
                <div class="card-footer text-muted">
                    ${message.authorName}
                </div>
            </div>
        <#else>
            No messages
        </#list>
    </div>
</@c.page>