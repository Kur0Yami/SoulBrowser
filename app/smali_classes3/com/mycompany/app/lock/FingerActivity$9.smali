.class Lcom/mycompany/app/lock/FingerActivity$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/lock/FingerActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/lock/FingerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/lock/FingerActivity$9;->c:Lcom/mycompany/app/lock/FingerActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mycompany/app/lock/FingerActivity$9;->c:Lcom/mycompany/app/lock/FingerActivity;

    .line 5
    .line 6
    iget-object v2, v1, Lcom/mycompany/app/lock/FingerActivity;->f1:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {v2}, Lcom/mycompany/app/pref/PrefSync;->u(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    iget-object v2, v1, Lcom/mycompany/app/lock/FingerActivity;->f1:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->Y4(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    iget v2, v1, Lcom/mycompany/app/lock/FingerActivity;->l1:I

    .line 17
    .line 18
    const/4 v3, 0x4

    .line 19
    if-ne v2, v3, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/mycompany/app/lock/FingerActivity;->w0()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    iget-object v2, v1, Lcom/mycompany/app/lock/FingerActivity;->m1:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v1, v2, v0}, Lcom/mycompany/app/main/MainUtil;->d7(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
