/// url : "https://api.github.com/repos/octocat/Spoon-Knife/issues/32633"
/// repository_url : "https://api.github.com/repos/octocat/Spoon-Knife"
/// labels_url : "https://api.github.com/repos/octocat/Spoon-Knife/issues/32633/labels{/name}"
/// comments_url : "https://api.github.com/repos/octocat/Spoon-Knife/issues/32633/comments"
/// events_url : "https://api.github.com/repos/octocat/Spoon-Knife/issues/32633/events"
/// html_url : "https://github.com/octocat/Spoon-Knife/pull/32633"
/// id : 2193936848
/// node_id : "PR_kwDOABPW4M5qCO6B"
/// number : 32633
/// title : "Update index.html and styles.css."
/// user : {"login":"BKICE01","id":163355484,"node_id":"U_kgDOCbybXA","avatar_url":"https://avatars.githubusercontent.com/u/163355484?v=4","gravatar_id":"","url":"https://api.github.com/users/BKICE01","html_url":"https://github.com/BKICE01","followers_url":"https://api.github.com/users/BKICE01/followers","following_url":"https://api.github.com/users/BKICE01/following{/other_user}","gists_url":"https://api.github.com/users/BKICE01/gists{/gist_id}","starred_url":"https://api.github.com/users/BKICE01/starred{/owner}{/repo}","subscriptions_url":"https://api.github.com/users/BKICE01/subscriptions","organizations_url":"https://api.github.com/users/BKICE01/orgs","repos_url":"https://api.github.com/users/BKICE01/repos","events_url":"https://api.github.com/users/BKICE01/events{/privacy}","received_events_url":"https://api.github.com/users/BKICE01/received_events","type":"User","site_admin":false}
/// labels : []
/// state : "open"
/// locked : false
/// assignee : null
/// assignees : []
/// milestone : null
/// comments : 0
/// created_at : "2024-03-19T03:34:56Z"
/// updated_at : "2024-03-19T03:34:56Z"
/// closed_at : null
/// author_association : "NONE"
/// active_lock_reason : null
/// draft : false
/// pull_request : {"url":"https://api.github.com/repos/octocat/Spoon-Knife/pulls/32633","html_url":"https://github.com/octocat/Spoon-Knife/pull/32633","diff_url":"https://github.com/octocat/Spoon-Knife/pull/32633.diff","patch_url":"https://github.com/octocat/Spoon-Knife/pull/32633.patch","merged_at":null}
/// body : "Addressing #1\r\n\r\n"
/// reactions : {"url":"https://api.github.com/repos/octocat/Spoon-Knife/issues/32633/reactions","total_count":0,"+1":0,"-1":0,"laugh":0,"hooray":0,"confused":0,"heart":0,"rocket":0,"eyes":0}
/// timeline_url : "https://api.github.com/repos/octocat/Spoon-Knife/issues/32633/timeline"
/// performed_via_github_app : null
/// state_reason : null

class FoodList {
  FoodList({
      String? url, 
      String? repositoryUrl, 
      String? labelsUrl, 
      String? commentsUrl, 
      String? eventsUrl, 
      String? htmlUrl, 
      num? id, 
      String? nodeId, 
      num? number, 
      String? title, 
      User? user, 
      List<dynamic>? labels, 
      String? state, 
      bool? locked, 
      dynamic assignee, 
      List<dynamic>? assignees, 
      dynamic milestone, 
      num? comments, 
      String? createdAt, 
      String? updatedAt, 
      dynamic closedAt, 
      String? authorAssociation, 
      dynamic activeLockReason, 
      bool? draft, 
      PullRequest? pullRequest, 
      String? body, 
      Reactions? reactions, 
      String? timelineUrl, 
      dynamic performedViaGithubApp, 
      dynamic stateReason,}){
    _url = url;
    _repositoryUrl = repositoryUrl;
    _labelsUrl = labelsUrl;
    _commentsUrl = commentsUrl;
    _eventsUrl = eventsUrl;
    _htmlUrl = htmlUrl;
    _id = id;
    _nodeId = nodeId;
    _number = number;
    _title = title;
    _user = user;
    _labels = labels;
    _state = state;
    _locked = locked;
    _assignee = assignee;
    _assignees = assignees;
    _milestone = milestone;
    _comments = comments;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _closedAt = closedAt;
    _authorAssociation = authorAssociation;
    _activeLockReason = activeLockReason;
    _draft = draft;
    _pullRequest = pullRequest;
    _body = body;
    _reactions = reactions;
    _timelineUrl = timelineUrl;
    _performedViaGithubApp = performedViaGithubApp;
    _stateReason = stateReason;
}

  FoodList.fromJson(dynamic json) {
    _url = json['url'];
    _repositoryUrl = json['repository_url'];
    _labelsUrl = json['labels_url'];
    _commentsUrl = json['comments_url'];
    _eventsUrl = json['events_url'];
    _htmlUrl = json['html_url'];
    _id = json['id'];
    _nodeId = json['node_id'];
    _number = json['number'];
    _title = json['title'];
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
    if (json['labels'] != null) {
      _labels = [];
      json['labels'].forEach((v) {
      //  _labels?.add(Dynamic.fromJson(v));
      });
    }
    _state = json['state'];
    _locked = json['locked'];
    _assignee = json['assignee'];
    if (json['assignees'] != null) {
      _assignees = [];
      json['assignees'].forEach((v) {
       // _assignees?.add(Dynamic.fromJson(v));
      });
    }
    _milestone = json['milestone'];
    _comments = json['comments'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _closedAt = json['closed_at'];
    _authorAssociation = json['author_association'];
    _activeLockReason = json['active_lock_reason'];
    _draft = json['draft'];
    _pullRequest = json['pull_request'] != null ? PullRequest.fromJson(json['pull_request']) : null;
    _body = json['body'];
    _reactions = json['reactions'] != null ? Reactions.fromJson(json['reactions']) : null;
    _timelineUrl = json['timeline_url'];
    _performedViaGithubApp = json['performed_via_github_app'];
    _stateReason = json['state_reason'];
  }
  String? _url;
  String? _repositoryUrl;
  String? _labelsUrl;
  String? _commentsUrl;
  String? _eventsUrl;
  String? _htmlUrl;
  num? _id;
  String? _nodeId;
  num? _number;
  String? _title;
  User? _user;
  List<dynamic>? _labels;
  String? _state;
  bool? _locked;
  dynamic _assignee;
  List<dynamic>? _assignees;
  dynamic _milestone;
  num? _comments;
  String? _createdAt;
  String? _updatedAt;
  dynamic _closedAt;
  String? _authorAssociation;
  dynamic _activeLockReason;
  bool? _draft;
  PullRequest? _pullRequest;
  String? _body;
  Reactions? _reactions;
  String? _timelineUrl;
  dynamic _performedViaGithubApp;
  dynamic _stateReason;
FoodList copyWith({  String? url,
  String? repositoryUrl,
  String? labelsUrl,
  String? commentsUrl,
  String? eventsUrl,
  String? htmlUrl,
  num? id,
  String? nodeId,
  num? number,
  String? title,
  User? user,
  List<dynamic>? labels,
  String? state,
  bool? locked,
  dynamic assignee,
  List<dynamic>? assignees,
  dynamic milestone,
  num? comments,
  String? createdAt,
  String? updatedAt,
  dynamic closedAt,
  String? authorAssociation,
  dynamic activeLockReason,
  bool? draft,
  PullRequest? pullRequest,
  String? body,
  Reactions? reactions,
  String? timelineUrl,
  dynamic performedViaGithubApp,
  dynamic stateReason,
}) => FoodList(  url: url ?? _url,
  repositoryUrl: repositoryUrl ?? _repositoryUrl,
  labelsUrl: labelsUrl ?? _labelsUrl,
  commentsUrl: commentsUrl ?? _commentsUrl,
  eventsUrl: eventsUrl ?? _eventsUrl,
  htmlUrl: htmlUrl ?? _htmlUrl,
  id: id ?? _id,
  nodeId: nodeId ?? _nodeId,
  number: number ?? _number,
  title: title ?? _title,
  user: user ?? _user,
  labels: labels ?? _labels,
  state: state ?? _state,
  locked: locked ?? _locked,
  assignee: assignee ?? _assignee,
  assignees: assignees ?? _assignees,
  milestone: milestone ?? _milestone,
  comments: comments ?? _comments,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  closedAt: closedAt ?? _closedAt,
  authorAssociation: authorAssociation ?? _authorAssociation,
  activeLockReason: activeLockReason ?? _activeLockReason,
  draft: draft ?? _draft,
  pullRequest: pullRequest ?? _pullRequest,
  body: body ?? _body,
  reactions: reactions ?? _reactions,
  timelineUrl: timelineUrl ?? _timelineUrl,
  performedViaGithubApp: performedViaGithubApp ?? _performedViaGithubApp,
  stateReason: stateReason ?? _stateReason,
);
  String? get url => _url;
  String? get repositoryUrl => _repositoryUrl;
  String? get labelsUrl => _labelsUrl;
  String? get commentsUrl => _commentsUrl;
  String? get eventsUrl => _eventsUrl;
  String? get htmlUrl => _htmlUrl;
  num? get id => _id;
  String? get nodeId => _nodeId;
  num? get number => _number;
  String? get title => _title;
  User? get user => _user;
  List<dynamic>? get labels => _labels;
  String? get state => _state;
  bool? get locked => _locked;
  dynamic get assignee => _assignee;
  List<dynamic>? get assignees => _assignees;
  dynamic get milestone => _milestone;
  num? get comments => _comments;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get closedAt => _closedAt;
  String? get authorAssociation => _authorAssociation;
  dynamic get activeLockReason => _activeLockReason;
  bool? get draft => _draft;
  PullRequest? get pullRequest => _pullRequest;
  String? get body => _body;
  Reactions? get reactions => _reactions;
  String? get timelineUrl => _timelineUrl;
  dynamic get performedViaGithubApp => _performedViaGithubApp;
  dynamic get stateReason => _stateReason;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = _url;
    map['repository_url'] = _repositoryUrl;
    map['labels_url'] = _labelsUrl;
    map['comments_url'] = _commentsUrl;
    map['events_url'] = _eventsUrl;
    map['html_url'] = _htmlUrl;
    map['id'] = _id;
    map['node_id'] = _nodeId;
    map['number'] = _number;
    map['title'] = _title;
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    if (_labels != null) {
      map['labels'] = _labels?.map((v) => v.toJson()).toList();
    }
    map['state'] = _state;
    map['locked'] = _locked;
    map['assignee'] = _assignee;
    if (_assignees != null) {
      map['assignees'] = _assignees?.map((v) => v.toJson()).toList();
    }
    map['milestone'] = _milestone;
    map['comments'] = _comments;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['closed_at'] = _closedAt;
    map['author_association'] = _authorAssociation;
    map['active_lock_reason'] = _activeLockReason;
    map['draft'] = _draft;
    if (_pullRequest != null) {
      map['pull_request'] = _pullRequest?.toJson();
    }
    map['body'] = _body;
    if (_reactions != null) {
      map['reactions'] = _reactions?.toJson();
    }
    map['timeline_url'] = _timelineUrl;
    map['performed_via_github_app'] = _performedViaGithubApp;
    map['state_reason'] = _stateReason;
    return map;
  }

}

/// url : "https://api.github.com/repos/octocat/Spoon-Knife/issues/32633/reactions"
/// total_count : 0
/// +1 : 0
/// -1 : 0
/// laugh : 0
/// hooray : 0
/// confused : 0
/// heart : 0
/// rocket : 0
/// eyes : 0

class Reactions {
  Reactions({
      String? url, 
      num? totalCount, 
      //num? 1,
     // num? 1,
      num? laugh, 
      num? hooray, 
      num? confused, 
      num? heart, 
      num? rocket, 
      num? eyes,}){
    _url = url;
    _totalCount = totalCount;
    _1 = 1;
    _1 = 1;
    _laugh = laugh;
    _hooray = hooray;
    _confused = confused;
    _heart = heart;
    _rocket = rocket;
    _eyes = eyes;
}

  Reactions.fromJson(dynamic json) {
    _url = json['url'];
    _totalCount = json['total_count'];
    _1 = json['+1'];
    _1 = json['-1'];
    _laugh = json['laugh'];
    _hooray = json['hooray'];
    _confused = json['confused'];
    _heart = json['heart'];
    _rocket = json['rocket'];
    _eyes = json['eyes'];
  }
  String? _url;
  num? _totalCount;
  num? _1;
  //num? _1;
  num? _laugh;
  num? _hooray;
  num? _confused;
  num? _heart;
  num? _rocket;
  num? _eyes;
Reactions copyWith({  String? url,
  num? totalCount,
  //num? 1,
  //num? 1,
  num? laugh,
  num? hooray,
  num? confused,
  num? heart,
  num? rocket,
  num? eyes,
}) => Reactions(  url: url ?? _url,
  totalCount: totalCount ?? _totalCount,
  //1: 1 ?? _1,
  //1: 1 ?? _1,
  laugh: laugh ?? _laugh,
  hooray: hooray ?? _hooray,
  confused: confused ?? _confused,
  heart: heart ?? _heart,
  rocket: rocket ?? _rocket,
  eyes: eyes ?? _eyes,
);
  String? get url => _url;
  num? get totalCount => _totalCount;
  //num? get 1 => _1;
  //num? get 1 => _1;
  num? get laugh => _laugh;
  num? get hooray => _hooray;
  num? get confused => _confused;
  num? get heart => _heart;
  num? get rocket => _rocket;
  num? get eyes => _eyes;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = _url;
    map['total_count'] = _totalCount;
    map['+1'] = _1;
    map['-1'] = _1;
    map['laugh'] = _laugh;
    map['hooray'] = _hooray;
    map['confused'] = _confused;
    map['heart'] = _heart;
    map['rocket'] = _rocket;
    map['eyes'] = _eyes;
    return map;
  }

}

/// url : "https://api.github.com/repos/octocat/Spoon-Knife/pulls/32633"
/// html_url : "https://github.com/octocat/Spoon-Knife/pull/32633"
/// diff_url : "https://github.com/octocat/Spoon-Knife/pull/32633.diff"
/// patch_url : "https://github.com/octocat/Spoon-Knife/pull/32633.patch"
/// merged_at : null

class PullRequest {
  PullRequest({
      String? url, 
      String? htmlUrl, 
      String? diffUrl, 
      String? patchUrl, 
      dynamic mergedAt,}){
    _url = url;
    _htmlUrl = htmlUrl;
    _diffUrl = diffUrl;
    _patchUrl = patchUrl;
    _mergedAt = mergedAt;
}

  PullRequest.fromJson(dynamic json) {
    _url = json['url'];
    _htmlUrl = json['html_url'];
    _diffUrl = json['diff_url'];
    _patchUrl = json['patch_url'];
    _mergedAt = json['merged_at'];
  }
  String? _url;
  String? _htmlUrl;
  String? _diffUrl;
  String? _patchUrl;
  dynamic _mergedAt;
PullRequest copyWith({  String? url,
  String? htmlUrl,
  String? diffUrl,
  String? patchUrl,
  dynamic mergedAt,
}) => PullRequest(  url: url ?? _url,
  htmlUrl: htmlUrl ?? _htmlUrl,
  diffUrl: diffUrl ?? _diffUrl,
  patchUrl: patchUrl ?? _patchUrl,
  mergedAt: mergedAt ?? _mergedAt,
);
  String? get url => _url;
  String? get htmlUrl => _htmlUrl;
  String? get diffUrl => _diffUrl;
  String? get patchUrl => _patchUrl;
  dynamic get mergedAt => _mergedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = _url;
    map['html_url'] = _htmlUrl;
    map['diff_url'] = _diffUrl;
    map['patch_url'] = _patchUrl;
    map['merged_at'] = _mergedAt;
    return map;
  }

}

/// login : "BKICE01"
/// id : 163355484
/// node_id : "U_kgDOCbybXA"
/// avatar_url : "https://avatars.githubusercontent.com/u/163355484?v=4"
/// gravatar_id : ""
/// url : "https://api.github.com/users/BKICE01"
/// html_url : "https://github.com/BKICE01"
/// followers_url : "https://api.github.com/users/BKICE01/followers"
/// following_url : "https://api.github.com/users/BKICE01/following{/other_user}"
/// gists_url : "https://api.github.com/users/BKICE01/gists{/gist_id}"
/// starred_url : "https://api.github.com/users/BKICE01/starred{/owner}{/repo}"
/// subscriptions_url : "https://api.github.com/users/BKICE01/subscriptions"
/// organizations_url : "https://api.github.com/users/BKICE01/orgs"
/// repos_url : "https://api.github.com/users/BKICE01/repos"
/// events_url : "https://api.github.com/users/BKICE01/events{/privacy}"
/// received_events_url : "https://api.github.com/users/BKICE01/received_events"
/// type : "User"
/// site_admin : false

class User {
  User({
      String? login, 
      num? id, 
      String? nodeId, 
      String? avatarUrl, 
      String? gravatarId, 
      String? url, 
      String? htmlUrl, 
      String? followersUrl, 
      String? followingUrl, 
      String? gistsUrl, 
      String? starredUrl, 
      String? subscriptionsUrl, 
      String? organizationsUrl, 
      String? reposUrl, 
      String? eventsUrl, 
      String? receivedEventsUrl, 
      String? type, 
      bool? siteAdmin,}){
    _login = login;
    _id = id;
    _nodeId = nodeId;
    _avatarUrl = avatarUrl;
    _gravatarId = gravatarId;
    _url = url;
    _htmlUrl = htmlUrl;
    _followersUrl = followersUrl;
    _followingUrl = followingUrl;
    _gistsUrl = gistsUrl;
    _starredUrl = starredUrl;
    _subscriptionsUrl = subscriptionsUrl;
    _organizationsUrl = organizationsUrl;
    _reposUrl = reposUrl;
    _eventsUrl = eventsUrl;
    _receivedEventsUrl = receivedEventsUrl;
    _type = type;
    _siteAdmin = siteAdmin;
}

  User.fromJson(dynamic json) {
    _login = json['login'];
    _id = json['id'];
    _nodeId = json['node_id'];
    _avatarUrl = json['avatar_url'];
    _gravatarId = json['gravatar_id'];
    _url = json['url'];
    _htmlUrl = json['html_url'];
    _followersUrl = json['followers_url'];
    _followingUrl = json['following_url'];
    _gistsUrl = json['gists_url'];
    _starredUrl = json['starred_url'];
    _subscriptionsUrl = json['subscriptions_url'];
    _organizationsUrl = json['organizations_url'];
    _reposUrl = json['repos_url'];
    _eventsUrl = json['events_url'];
    _receivedEventsUrl = json['received_events_url'];
    _type = json['type'];
    _siteAdmin = json['site_admin'];
  }
  String? _login;
  num? _id;
  String? _nodeId;
  String? _avatarUrl;
  String? _gravatarId;
  String? _url;
  String? _htmlUrl;
  String? _followersUrl;
  String? _followingUrl;
  String? _gistsUrl;
  String? _starredUrl;
  String? _subscriptionsUrl;
  String? _organizationsUrl;
  String? _reposUrl;
  String? _eventsUrl;
  String? _receivedEventsUrl;
  String? _type;
  bool? _siteAdmin;
User copyWith({  String? login,
  num? id,
  String? nodeId,
  String? avatarUrl,
  String? gravatarId,
  String? url,
  String? htmlUrl,
  String? followersUrl,
  String? followingUrl,
  String? gistsUrl,
  String? starredUrl,
  String? subscriptionsUrl,
  String? organizationsUrl,
  String? reposUrl,
  String? eventsUrl,
  String? receivedEventsUrl,
  String? type,
  bool? siteAdmin,
}) => User(  login: login ?? _login,
  id: id ?? _id,
  nodeId: nodeId ?? _nodeId,
  avatarUrl: avatarUrl ?? _avatarUrl,
  gravatarId: gravatarId ?? _gravatarId,
  url: url ?? _url,
  htmlUrl: htmlUrl ?? _htmlUrl,
  followersUrl: followersUrl ?? _followersUrl,
  followingUrl: followingUrl ?? _followingUrl,
  gistsUrl: gistsUrl ?? _gistsUrl,
  starredUrl: starredUrl ?? _starredUrl,
  subscriptionsUrl: subscriptionsUrl ?? _subscriptionsUrl,
  organizationsUrl: organizationsUrl ?? _organizationsUrl,
  reposUrl: reposUrl ?? _reposUrl,
  eventsUrl: eventsUrl ?? _eventsUrl,
  receivedEventsUrl: receivedEventsUrl ?? _receivedEventsUrl,
  type: type ?? _type,
  siteAdmin: siteAdmin ?? _siteAdmin,
);
  String? get login => _login;
  num? get id => _id;
  String? get nodeId => _nodeId;
  String? get avatarUrl => _avatarUrl;
  String? get gravatarId => _gravatarId;
  String? get url => _url;
  String? get htmlUrl => _htmlUrl;
  String? get followersUrl => _followersUrl;
  String? get followingUrl => _followingUrl;
  String? get gistsUrl => _gistsUrl;
  String? get starredUrl => _starredUrl;
  String? get subscriptionsUrl => _subscriptionsUrl;
  String? get organizationsUrl => _organizationsUrl;
  String? get reposUrl => _reposUrl;
  String? get eventsUrl => _eventsUrl;
  String? get receivedEventsUrl => _receivedEventsUrl;
  String? get type => _type;
  bool? get siteAdmin => _siteAdmin;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['login'] = _login;
    map['id'] = _id;
    map['node_id'] = _nodeId;
    map['avatar_url'] = _avatarUrl;
    map['gravatar_id'] = _gravatarId;
    map['url'] = _url;
    map['html_url'] = _htmlUrl;
    map['followers_url'] = _followersUrl;
    map['following_url'] = _followingUrl;
    map['gists_url'] = _gistsUrl;
    map['starred_url'] = _starredUrl;
    map['subscriptions_url'] = _subscriptionsUrl;
    map['organizations_url'] = _organizationsUrl;
    map['repos_url'] = _reposUrl;
    map['events_url'] = _eventsUrl;
    map['received_events_url'] = _receivedEventsUrl;
    map['type'] = _type;
    map['site_admin'] = _siteAdmin;
    return map;
  }

}