.class Lcom/mycompany/app/dialog/DialogTabEdit$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogTabEdit;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabEdit;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabEdit$3;->c:Lcom/mycompany/app/dialog/DialogTabEdit;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTabEdit$3;->c:Lcom/mycompany/app/dialog/DialogTabEdit;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogTabEdit;->a0:Landroid/app/Activity;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogTabEdit;->q0:Lcom/mycompany/app/dialog/DialogQuickColor;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogTabEdit;->C()V

    .line 14
    .line 15
    .line 16
    sget-boolean v0, Lcom/mycompany/app/pref/PrefAlbum;->m:Z

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    sput-boolean v0, Lcom/mycompany/app/pref/PrefAlbum;->m:Z

    .line 22
    .line 23
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogTabEdit;->b0:Landroid/content/Context;

    .line 24
    .line 25
    const-string v2, "mNotiQuick"

    .line 26
    .line 27
    invoke-static {v0, v1, v2, v0}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 28
    .line 29
    .line 30
    :cond_2
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogTabEdit;->l0:Landroid/view/View;

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    const/16 v1, 0x8

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    iput-object v0, p1, Lcom/mycompany/app/dialog/DialogTabEdit;->l0:Landroid/view/View;

    .line 41
    .line 42
    :cond_3
    iget v0, p1, Lcom/mycompany/app/dialog/DialogTabEdit;->g0:I

    .line 43
    .line 44
    if-nez v0, :cond_4

    .line 45
    .line 46
    sget v0, Lcom/mycompany/app/pref/PrefWeb;->b0:I

    .line 47
    .line 48
    :cond_4
    new-instance v1, Lcom/mycompany/app/dialog/DialogQuickColor;

    .line 49
    .line 50
    iget-object v2, p1, Lcom/mycompany/app/dialog/DialogTabEdit;->a0:Landroid/app/Activity;

    .line 51
    .line 52
    new-instance v3, Lcom/mycompany/app/dialog/DialogTabEdit$6;

    .line 53
    .line 54
    invoke-direct {v3, p1}, Lcom/mycompany/app/dialog/DialogTabEdit$6;-><init>(Lcom/mycompany/app/dialog/DialogTabEdit;)V

    .line 55
    .line 56
    .line 57
    invoke-direct {v1, v2, v0, v3}, Lcom/mycompany/app/dialog/DialogQuickColor;-><init>(Landroid/app/Activity;ILcom/mycompany/app/dialog/DialogQuickColor$QuickColorListener;)V

    .line 58
    .line 59
    .line 60
    iput-object v1, p1, Lcom/mycompany/app/dialog/DialogTabEdit;->q0:Lcom/mycompany/app/dialog/DialogQuickColor;

    .line 61
    .line 62
    new-instance v0, Lcom/mycompany/app/dialog/DialogTabEdit$7;

    .line 63
    .line 64
    invoke-direct {v0, p1}, Lcom/mycompany/app/dialog/DialogTabEdit$7;-><init>(Lcom/mycompany/app/dialog/DialogTabEdit;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method
