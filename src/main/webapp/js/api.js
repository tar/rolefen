function makeConstantTemplateApiUrl(templateId) {
    if (templateId)
        return window.constantTemplatesApiUrl + '/' + templateId;
    else
        return window.constantTemplatesApiUrl;
}
function makeActiveUserMappingApiUrl() {
    return window.activeUserMappingsApiUrl;
}
