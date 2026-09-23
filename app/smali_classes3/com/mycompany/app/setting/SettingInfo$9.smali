.class Lcom/mycompany/app/setting/SettingInfo$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingInfo;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mycompany/app/setting/SettingInfo$9;->c:Lcom/mycompany/app/setting/SettingInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/mycompany/app/setting/SettingInfo$9;->c:Lcom/mycompany/app/setting/SettingInfo;

    invoke-static {p1}, Lcom/mycompany/app/setting/AppInfoLauncher;->open(Landroid/app/Activity;)V

    return-void
.end method
