.class Lcom/mycompany/app/dialog/DialogSetColumn$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetColumn;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetColumn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetColumn$4;->c:Lcom/mycompany/app/dialog/DialogSetColumn;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetColumn$4;->c:Lcom/mycompany/app/dialog/DialogSetColumn;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/mycompany/app/dialog/DialogSetColumn;->c0:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget v0, Lcom/mycompany/app/pref/PrefMain;->z:I

    .line 8
    .line 9
    iget v1, p1, Lcom/mycompany/app/dialog/DialogSetColumn;->i0:I

    .line 10
    .line 11
    if-eq v0, v1, :cond_2

    .line 12
    .line 13
    sput v1, Lcom/mycompany/app/pref/PrefMain;->z:I

    .line 14
    .line 15
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSetColumn;->b0:Landroid/content/Context;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-static {v0, v1}, Lcom/mycompany/app/pref/PrefMain;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefMain;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "mMenuPort"

    .line 23
    .line 24
    sget v2, Lcom/mycompany/app/pref/PrefMain;->z:I

    .line 25
    .line 26
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    sget v0, Lcom/mycompany/app/pref/PrefZtri;->l0:I

    .line 34
    .line 35
    iget v1, p1, Lcom/mycompany/app/dialog/DialogSetColumn;->i0:I

    .line 36
    .line 37
    if-ne v0, v1, :cond_1

    .line 38
    .line 39
    sget v0, Lcom/mycompany/app/pref/PrefZtri;->m0:I

    .line 40
    .line 41
    iget v2, p1, Lcom/mycompany/app/dialog/DialogSetColumn;->j0:I

    .line 42
    .line 43
    if-eq v0, v2, :cond_2

    .line 44
    .line 45
    :cond_1
    sput v1, Lcom/mycompany/app/pref/PrefZtri;->l0:I

    .line 46
    .line 47
    iget v0, p1, Lcom/mycompany/app/dialog/DialogSetColumn;->j0:I

    .line 48
    .line 49
    sput v0, Lcom/mycompany/app/pref/PrefZtri;->m0:I

    .line 50
    .line 51
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSetColumn;->b0:Landroid/content/Context;

    .line 52
    .line 53
    invoke-static {v0}, Lcom/mycompany/app/pref/PrefZtri;->r(Landroid/content/Context;)Lcom/mycompany/app/pref/PrefZtri;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const-string v1, "mQuickPort"

    .line 58
    .line 59
    sget v2, Lcom/mycompany/app/pref/PrefZtri;->l0:I

    .line 60
    .line 61
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string v1, "mQuickLand"

    .line 65
    .line 66
    sget v2, Lcom/mycompany/app/pref/PrefZtri;->m0:I

    .line 67
    .line 68
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 72
    .line 73
    .line 74
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogSetColumn;->dismiss()V

    .line 75
    .line 76
    .line 77
    return-void
.end method
