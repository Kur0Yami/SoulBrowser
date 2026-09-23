.class Lcom/mycompany/app/setting/SettingMenu$31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingMenu$31;->c:Lcom/mycompany/app/setting/SettingMenu;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    sget p1, Lcom/mycompany/app/setting/SettingMenu;->s2:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingMenu$31;->c:Lcom/mycompany/app/setting/SettingMenu;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingMenu;->j2:Lcom/mycompany/app/dialog/DialogSetColumn;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetColumn;->dismiss()V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p1, Lcom/mycompany/app/setting/SettingMenu;->j2:Lcom/mycompany/app/dialog/DialogSetColumn;

    .line 14
    .line 15
    :cond_0
    iget v0, p1, Lcom/mycompany/app/setting/SettingMenu;->q2:I

    .line 16
    .line 17
    sget v1, Lcom/mycompany/app/pref/PrefMain;->z:I

    .line 18
    .line 19
    if-eq v0, v1, :cond_1

    .line 20
    .line 21
    iput v1, p1, Lcom/mycompany/app/setting/SettingMenu;->q2:I

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/mycompany/app/setting/SettingMenu;->S0()V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method
