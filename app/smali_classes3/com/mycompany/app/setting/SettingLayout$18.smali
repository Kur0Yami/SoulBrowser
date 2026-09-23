.class Lcom/mycompany/app/setting/SettingLayout$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingLayout;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingLayout$18;->c:Lcom/mycompany/app/setting/SettingLayout;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingLayout$18;->c:Lcom/mycompany/app/setting/SettingLayout;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lcom/mycompany/app/setting/SettingLayout;->E0(Lcom/mycompany/app/setting/SettingLayout;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/pref/PrefRead;->w:Z

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-static {p1, v0}, Lcom/mycompany/app/setting/SettingLayout;->H0(Lcom/mycompany/app/setting/SettingLayout;Z)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    invoke-static {p1, v0}, Lcom/mycompany/app/setting/SettingLayout;->D0(Lcom/mycompany/app/setting/SettingLayout;Z)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
