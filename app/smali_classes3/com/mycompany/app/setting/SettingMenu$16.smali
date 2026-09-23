.class Lcom/mycompany/app/setting/SettingMenu$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingMenu;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingMenu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingMenu$16;->c:Lcom/mycompany/app/setting/SettingMenu;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingMenu$16;->c:Lcom/mycompany/app/setting/SettingMenu;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/mycompany/app/setting/SettingMenu;->E0(Lcom/mycompany/app/setting/SettingMenu;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    sget-boolean v0, Lcom/mycompany/app/pref/PrefRead;->w:Z

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-static {p1, v1}, Lcom/mycompany/app/setting/SettingMenu;->G0(Lcom/mycompany/app/setting/SettingMenu;Z)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    invoke-static {p1, v1}, Lcom/mycompany/app/setting/SettingMenu;->D0(Lcom/mycompany/app/setting/SettingMenu;Z)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
