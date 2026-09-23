.class Lcom/mycompany/app/setting/SettingCustom$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:I

.field public final synthetic g:Lcom/mycompany/app/setting/SettingCustom;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingCustom;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingCustom$9;->g:Lcom/mycompany/app/setting/SettingCustom;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/setting/SettingCustom$9;->c:I

    .line 7
    .line 8
    iput p3, p0, Lcom/mycompany/app/setting/SettingCustom$9;->f:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .line 1
    iget p1, p0, Lcom/mycompany/app/setting/SettingCustom$9;->c:I

    .line 2
    .line 3
    sget v0, Lcom/mycompany/app/pref/PrefWeb;->V:I

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingCustom$9;->g:Lcom/mycompany/app/setting/SettingCustom;

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    iget p1, p0, Lcom/mycompany/app/setting/SettingCustom$9;->f:I

    .line 10
    .line 11
    sget v0, Lcom/mycompany/app/pref/PrefWeb;->W:I

    .line 12
    .line 13
    if-eq p1, v0, :cond_1

    .line 14
    .line 15
    :cond_0
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    sget-object v0, Lcom/mycompany/app/setting/SettingCustom;->h2:[I

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingCustom;->Q0()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v2, 0x7

    .line 26
    invoke-virtual {p1, v2, v0}, Lcom/mycompany/app/setting/SettingListAdapter;->G(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    sget-object p1, Lcom/mycompany/app/setting/SettingCustom;->h2:[I

    .line 30
    .line 31
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingCustom;->c2:Lcom/mycompany/app/dialog/DialogSetSuggest;

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogSetSuggest;->dismiss()V

    .line 36
    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    iput-object p1, v1, Lcom/mycompany/app/setting/SettingCustom;->c2:Lcom/mycompany/app/dialog/DialogSetSuggest;

    .line 40
    .line 41
    :cond_2
    return-void
.end method
