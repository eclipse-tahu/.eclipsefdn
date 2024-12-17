local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('eclipse-tahu') {
  settings+: {
    description: "",
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
    },
  },
  _repositories+:: [
    orgs.newRepo('tahu') {
      allow_merge_commit: true,
      allow_update_branch: false,
      code_scanning_default_languages+: [
        "java-kotlin",
        "javascript",
        "javascript-typescript",
        "python",
        "typescript"
      ],
      code_scanning_default_setup_enabled: true,
      default_branch: "master",
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "Eclipse Tahu addresses the existence of legacy SCADA/DCS/ICS protocols and infrastructures and provides a much-needed definition of how best to apply MQTT into these existing industrial operational environments.",
      homepage: "https://eclipse.org/tahu",
      topics+: [
        "iiot",
        "iot",
        "mqtt",
        "scada",
        "sparkplug",
        "sparkplug-specification"
      ],
    },
  ],
}
