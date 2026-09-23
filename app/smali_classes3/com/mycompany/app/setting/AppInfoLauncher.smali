.class public final Lcom/mycompany/app/setting/AppInfoLauncher;
.super Ljava/lang/Object;
.source "AppInfoLauncher.java"

.method private constructor <init>()V
  .registers 1
  .line 16
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static open(Landroid/app/Activity;)V
  .catch Ljava/lang/Exception; { :L0 .. :L2 } :L2
  .registers 5
    if-nez p0, :L0
    return-void
  :L0
  .line 24
    new-instance v0, Landroid/content/Intent;
    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"
    invoke-direct { v0, v1 }, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
  .line 25
    const-string v1, "package"
    invoke-virtual { p0 }, Landroid/app/Activity;->getPackageName()Ljava/lang/String;
    move-result-object v2
    const/4 v3, 0
    invoke-static { v1, v2, v3 }, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
  .line 28
    const-string v1, "android.intent.extra.USER"
    invoke-static { }, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;
    move-result-object v2
    invoke-virtual { v0, v1, v2 }, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
  .line 29
    invoke-virtual { p0 }, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object v1
    const/high16 v2, 0x10000
    invoke-virtual { v1, v0, v2 }, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    move-result-object v1
    if-eqz v1, :L1
  .line 31
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    if-eqz v2, :L1
  .line 32
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;
    invoke-virtual { v0, v2, v1 }, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
  :L1
  .line 35
    invoke-virtual { p0, v0 }, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
  :L2
    return-void
.end method
