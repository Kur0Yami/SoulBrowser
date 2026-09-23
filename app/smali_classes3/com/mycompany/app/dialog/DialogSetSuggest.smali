.class public Lcom/mycompany/app/dialog/DialogSetSuggest;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# static fields
.field public static final j0:[I

.field public static final k0:[I


# instance fields
.field public a0:Lcom/mycompany/app/main/MainActivity;

.field public b0:Landroid/content/Context;

.field public c0:Lcom/mycompany/app/view/MyDialogLinear;

.field public d0:Lcom/mycompany/app/view/MyRecyclerView;

.field public e0:Lcom/mycompany/app/view/MyLineText;

.field public f0:Lcom/mycompany/app/setting/SettingListAdapter;

.field public g0:Lcom/mycompany/app/view/MyPopupMenu;

.field public h0:I

.field public i0:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget v0, Lnet/kaki87/soul2/testing/R$string;->not_used:I

    .line 2
    .line 3
    sget v1, Lnet/kaki87/soul2/testing/R$string;->duckduckgo:I

    .line 4
    .line 5
    sget v2, Lnet/kaki87/soul2/testing/R$string;->google:I

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [I

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/mycompany/app/dialog/DialogSetSuggest;->j0:[I

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x2

    .line 16
    filled-new-array {v2, v0, v1}, [I

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lcom/mycompany/app/dialog/DialogSetSuggest;->k0:[I

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetSuggest;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetSuggest;->b0:Landroid/content/Context;

    .line 11
    .line 12
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance v0, Lcom/mycompany/app/dialog/DialogSetSuggest$1;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogSetSuggest$1;-><init>(Lcom/mycompany/app/dialog/DialogSetSuggest;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetSuggest;->b0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetSuggest;->g0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iput-object v1, p0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetSuggest;->g0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetSuggest;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetSuggest;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 29
    .line 30
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetSuggest;->d0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetSuggest;->d0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 38
    .line 39
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetSuggest;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 40
    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetSuggest;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 47
    .line 48
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetSuggest;->f0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 49
    .line 50
    if-eqz v0, :cond_5

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingListAdapter;->z()V

    .line 53
    .line 54
    .line 55
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetSuggest;->f0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 56
    .line 57
    :cond_5
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetSuggest;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 58
    .line 59
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetSuggest;->b0:Landroid/content/Context;

    .line 60
    .line 61
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 62
    .line 63
    .line 64
    return-void
.end method
