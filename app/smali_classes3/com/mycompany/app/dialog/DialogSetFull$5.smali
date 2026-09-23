.class Lcom/mycompany/app/dialog/DialogSetFull$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetFull;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetFull;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetFull$5;->c:Lcom/mycompany/app/dialog/DialogSetFull;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    sget-boolean p1, Lcom/mycompany/app/pref/PrefWeb;->t:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetFull$5;->c:Lcom/mycompany/app/dialog/DialogSetFull;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogSetFull;->q0:Z

    .line 6
    .line 7
    if-ne p1, v1, :cond_0

    .line 8
    .line 9
    sget-boolean p1, Lcom/mycompany/app/pref/PrefWeb;->u:Z

    .line 10
    .line 11
    iget-boolean v2, v0, Lcom/mycompany/app/dialog/DialogSetFull;->r0:Z

    .line 12
    .line 13
    if-ne p1, v2, :cond_0

    .line 14
    .line 15
    sget-boolean p1, Lcom/mycompany/app/pref/PrefWeb;->v:Z

    .line 16
    .line 17
    iget-boolean v2, v0, Lcom/mycompany/app/dialog/DialogSetFull;->s0:Z

    .line 18
    .line 19
    if-ne p1, v2, :cond_0

    .line 20
    .line 21
    sget-boolean p1, Lcom/mycompany/app/pref/PrefWeb;->w:Z

    .line 22
    .line 23
    iget-boolean v2, v0, Lcom/mycompany/app/dialog/DialogSetFull;->t0:Z

    .line 24
    .line 25
    if-eq p1, v2, :cond_1

    .line 26
    .line 27
    :cond_0
    sput-boolean v1, Lcom/mycompany/app/pref/PrefWeb;->t:Z

    .line 28
    .line 29
    iget-boolean p1, v0, Lcom/mycompany/app/dialog/DialogSetFull;->r0:Z

    .line 30
    .line 31
    sput-boolean p1, Lcom/mycompany/app/pref/PrefWeb;->u:Z

    .line 32
    .line 33
    iget-boolean p1, v0, Lcom/mycompany/app/dialog/DialogSetFull;->s0:Z

    .line 34
    .line 35
    sput-boolean p1, Lcom/mycompany/app/pref/PrefWeb;->v:Z

    .line 36
    .line 37
    iget-boolean p1, v0, Lcom/mycompany/app/dialog/DialogSetFull;->t0:Z

    .line 38
    .line 39
    sput-boolean p1, Lcom/mycompany/app/pref/PrefWeb;->w:Z

    .line 40
    .line 41
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogSetFull;->c0:Landroid/content/Context;

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-static {p1, v1}, Lcom/mycompany/app/pref/PrefWeb;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefWeb;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const-string v1, "mShowStatus"

    .line 49
    .line 50
    sget-boolean v2, Lcom/mycompany/app/pref/PrefWeb;->t:Z

    .line 51
    .line 52
    invoke-virtual {p1, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 53
    .line 54
    .line 55
    const-string v1, "mShowNavi"

    .line 56
    .line 57
    sget-boolean v2, Lcom/mycompany/app/pref/PrefWeb;->u:Z

    .line 58
    .line 59
    invoke-virtual {p1, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 60
    .line 61
    .line 62
    const-string v1, "mFixTop"

    .line 63
    .line 64
    sget-boolean v2, Lcom/mycompany/app/pref/PrefWeb;->v:Z

    .line 65
    .line 66
    invoke-virtual {p1, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 67
    .line 68
    .line 69
    const-string v1, "mFixBot"

    .line 70
    .line 71
    sget-boolean v2, Lcom/mycompany/app/pref/PrefWeb;->w:Z

    .line 72
    .line 73
    invoke-virtual {p1, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 77
    .line 78
    .line 79
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogSetFull;->d0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 80
    .line 81
    if-eqz p1, :cond_1

    .line 82
    .line 83
    invoke-interface {p1}, Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;->a()V

    .line 84
    .line 85
    .line 86
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetFull;->dismiss()V

    .line 87
    .line 88
    .line 89
    return-void
.end method
