.class Lcom/mycompany/app/setting/SettingMenu$10;
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
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingMenu$10;->c:Lcom/mycompany/app/setting/SettingMenu;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    sget-boolean p1, Lcom/mycompany/app/pref/PrefRead;->w:Z

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingMenu$10;->c:Lcom/mycompany/app/setting/SettingMenu;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-static {v1, v0}, Lcom/mycompany/app/setting/SettingMenu;->G0(Lcom/mycompany/app/setting/SettingMenu;Z)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {v1, v0}, Lcom/mycompany/app/setting/SettingMenu;->D0(Lcom/mycompany/app/setting/SettingMenu;Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
