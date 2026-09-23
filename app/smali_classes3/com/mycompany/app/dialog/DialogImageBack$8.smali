.class Lcom/mycompany/app/dialog/DialogImageBack$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogImageBack;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogImageBack;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogImageBack$8;->c:Lcom/mycompany/app/dialog/DialogImageBack;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    sget p1, Lcom/mycompany/app/pref/PrefImage;->B:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogImageBack$8;->c:Lcom/mycompany/app/dialog/DialogImageBack;

    .line 4
    .line 5
    iget v1, v0, Lcom/mycompany/app/dialog/DialogImageBack;->k0:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eq p1, v1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move p1, v2

    .line 13
    :goto_0
    if-nez p1, :cond_1

    .line 14
    .line 15
    sget v1, Lcom/mycompany/app/pref/PrefImage;->C:F

    .line 16
    .line 17
    iget v3, v0, Lcom/mycompany/app/dialog/DialogImageBack;->l0:F

    .line 18
    .line 19
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    :cond_1
    iget v1, v0, Lcom/mycompany/app/dialog/DialogImageBack;->k0:I

    .line 26
    .line 27
    sput v1, Lcom/mycompany/app/pref/PrefImage;->B:I

    .line 28
    .line 29
    iget v1, v0, Lcom/mycompany/app/dialog/DialogImageBack;->l0:F

    .line 30
    .line 31
    sput v1, Lcom/mycompany/app/pref/PrefImage;->C:F

    .line 32
    .line 33
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageBack;->a0:Landroid/content/Context;

    .line 34
    .line 35
    invoke-static {v1, v2}, Lcom/mycompany/app/pref/PrefImage;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefImage;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v2, "mBackColor"

    .line 40
    .line 41
    sget v3, Lcom/mycompany/app/pref/PrefImage;->B:I

    .line 42
    .line 43
    invoke-virtual {v1, v3, v2}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v2, "mBackPos"

    .line 47
    .line 48
    sget v3, Lcom/mycompany/app/pref/PrefImage;->C:F

    .line 49
    .line 50
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 54
    .line 55
    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogImageBack;->b0:Lcom/mycompany/app/dialog/DialogSetImage$ChangedListener;

    .line 59
    .line 60
    if-eqz p1, :cond_2

    .line 61
    .line 62
    invoke-interface {p1}, Lcom/mycompany/app/dialog/DialogSetImage$ChangedListener;->a()V

    .line 63
    .line 64
    .line 65
    :cond_2
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogImageBack;->dismiss()V

    .line 66
    .line 67
    .line 68
    return-void
.end method
