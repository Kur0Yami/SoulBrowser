.class Lcom/mycompany/app/setting/SettingMenu$17;
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
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingMenu$17;->c:Lcom/mycompany/app/setting/SettingMenu;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingMenu$17;->c:Lcom/mycompany/app/setting/SettingMenu;

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
    const/16 v0, 0x3e8

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {v1, v0, p1, v1}, Lcom/mycompany/app/setting/SettingMenu;->H0(IILcom/mycompany/app/setting/SettingMenu;Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
