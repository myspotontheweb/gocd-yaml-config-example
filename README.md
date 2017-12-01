# gocd-yaml-config-example
GoCD example configuration in YAML

Install [GoCD YAML configuration plugin](https://github.com/tomzo/gocd-yaml-config-plugin) and add this to your XML config:
```xml
  <config-repos>
    <config-repo pluginId="yaml.config.plugin" id="repo1">
      <git url="https://github.com/myspotontheweb/gocd-yaml-config-example.git" />
    </config-repo>
  </config-repos>

```
