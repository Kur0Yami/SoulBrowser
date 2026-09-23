.class Lcom/mycompany/app/setting/SettingMenu$4;
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
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingMenu$4;->c:Lcom/mycompany/app/setting/SettingMenu;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingMenu$4;->c:Lcom/mycompany/app/setting/SettingMenu;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingMenu;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setClickable(Z)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p1, Lcom/mycompany/app/setting/SettingMenu;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 13
    .line 14
    new-instance v0, Lcom/mycompany/app/setting/SettingMenu$4$1;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/mycompany/app/setting/SettingMenu$4$1;-><init>(Lcom/mycompany/app/setting/SettingMenu$4;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method
