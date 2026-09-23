.class Lcom/mycompany/app/dialog/DialogSetTabRestore$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetTabRestore$4;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetTabRestore$4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabRestore$4$1;->c:Lcom/mycompany/app/dialog/DialogSetTabRestore$4;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefWeb;->A:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabRestore$4$1;->c:Lcom/mycompany/app/dialog/DialogSetTabRestore$4;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetTabRestore$4;->c:Lcom/mycompany/app/dialog/DialogSetTabRestore;

    .line 6
    .line 7
    iget-boolean v3, v2, Lcom/mycompany/app/dialog/DialogSetTabRestore;->g0:Z

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v5, 0x0

    .line 11
    if-eq v0, v3, :cond_0

    .line 12
    .line 13
    sput-boolean v3, Lcom/mycompany/app/pref/PrefWeb;->A:Z

    .line 14
    .line 15
    iget-object v0, v2, Lcom/mycompany/app/dialog/DialogSetTabRestore;->a0:Landroid/content/Context;

    .line 16
    .line 17
    const/16 v2, 0xe

    .line 18
    .line 19
    const-string v6, "mTabRestore"

    .line 20
    .line 21
    invoke-static {v2, v0, v6, v3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    move v0, v4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v0, v5

    .line 27
    :goto_0
    sget-boolean v2, Lcom/mycompany/app/pref/PrefZone;->F:Z

    .line 28
    .line 29
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogSetTabRestore$4;->c:Lcom/mycompany/app/dialog/DialogSetTabRestore;

    .line 30
    .line 31
    iget-boolean v6, v3, Lcom/mycompany/app/dialog/DialogSetTabRestore;->h0:Z

    .line 32
    .line 33
    if-eq v2, v6, :cond_1

    .line 34
    .line 35
    sput-boolean v6, Lcom/mycompany/app/pref/PrefZone;->F:Z

    .line 36
    .line 37
    iget-object v0, v3, Lcom/mycompany/app/dialog/DialogSetTabRestore;->a0:Landroid/content/Context;

    .line 38
    .line 39
    const/16 v2, 0xf

    .line 40
    .line 41
    const-string v3, "mTabUndelete"

    .line 42
    .line 43
    invoke-static {v2, v0, v3, v6}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    move v4, v0

    .line 48
    :goto_1
    if-eqz v4, :cond_2

    .line 49
    .line 50
    iget-object v0, v1, Lcom/mycompany/app/dialog/DialogSetTabRestore$4;->c:Lcom/mycompany/app/dialog/DialogSetTabRestore;

    .line 51
    .line 52
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogSetTabRestore;->b0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 53
    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    invoke-interface {v0}, Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;->a()V

    .line 57
    .line 58
    .line 59
    :cond_2
    iget-object v0, v1, Lcom/mycompany/app/dialog/DialogSetTabRestore$4;->c:Lcom/mycompany/app/dialog/DialogSetTabRestore;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetTabRestore;->dismiss()V

    .line 62
    .line 63
    .line 64
    iget-object v0, v1, Lcom/mycompany/app/dialog/DialogSetTabRestore$4;->c:Lcom/mycompany/app/dialog/DialogSetTabRestore;

    .line 65
    .line 66
    iput-boolean v5, v0, Lcom/mycompany/app/dialog/DialogSetTabRestore;->i0:Z

    .line 67
    .line 68
    return-void
.end method
