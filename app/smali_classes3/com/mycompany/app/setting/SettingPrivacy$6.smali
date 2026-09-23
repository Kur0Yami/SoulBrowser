.class Lcom/mycompany/app/setting/SettingPrivacy$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic c:Z

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:Lcom/mycompany/app/setting/SettingPrivacy;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingPrivacy;ZII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingPrivacy$6;->h:Lcom/mycompany/app/setting/SettingPrivacy;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/mycompany/app/setting/SettingPrivacy$6;->c:Z

    .line 7
    .line 8
    iput p3, p0, Lcom/mycompany/app/setting/SettingPrivacy$6;->f:I

    .line 9
    .line 10
    iput p4, p0, Lcom/mycompany/app/setting/SettingPrivacy$6;->g:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .line 1
    iget-boolean p1, p0, Lcom/mycompany/app/setting/SettingPrivacy$6;->c:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPrivacy$6;->h:Lcom/mycompany/app/setting/SettingPrivacy;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget p1, p0, Lcom/mycompany/app/setting/SettingPrivacy$6;->f:I

    .line 8
    .line 9
    sget v1, Lcom/mycompany/app/pref/PrefWeb;->s:I

    .line 10
    .line 11
    if-eq p1, v1, :cond_0

    .line 12
    .line 13
    iget-object p1, v0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget v1, p0, Lcom/mycompany/app/setting/SettingPrivacy$6;->g:I

    .line 18
    .line 19
    invoke-static {v0}, Lcom/mycompany/app/setting/SettingPrivacy;->P0(Landroid/content/Context;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {p1, v1, v2}, Lcom/mycompany/app/setting/SettingListAdapter;->G(ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    sget p1, Lcom/mycompany/app/setting/SettingPrivacy;->b2:I

    .line 27
    .line 28
    iget-object p1, v0, Lcom/mycompany/app/setting/SettingPrivacy;->Y1:Lcom/mycompany/app/dialog/DialogSetPrivacy;

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogSetPrivacy;->dismiss()V

    .line 33
    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    iput-object p1, v0, Lcom/mycompany/app/setting/SettingPrivacy;->Y1:Lcom/mycompany/app/dialog/DialogSetPrivacy;

    .line 37
    .line 38
    :cond_1
    return-void
.end method
