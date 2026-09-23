.class Lcom/mycompany/app/lock/PinActivity$10$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/lock/PinActivity$10;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/lock/PinActivity$10;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/lock/PinActivity$10$1;->c:Lcom/mycompany/app/lock/PinActivity$10;

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
    iget-object v1, p0, Lcom/mycompany/app/lock/PinActivity$10$1;->c:Lcom/mycompany/app/lock/PinActivity$10;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/mycompany/app/lock/PinActivity$10;->c:Lcom/mycompany/app/lock/PinActivity;

    .line 7
    .line 8
    iget-object v2, v1, Lcom/mycompany/app/lock/PinActivity;->f1:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {v2}, Lcom/mycompany/app/pref/PrefSync;->u(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iget-object v2, v1, Lcom/mycompany/app/lock/PinActivity;->f1:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->Y4(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    iget v2, v1, Lcom/mycompany/app/lock/PinActivity;->u1:I

    .line 19
    .line 20
    const/4 v3, 0x4

    .line 21
    if-ne v2, v3, :cond_0

    .line 22
    .line 23
    invoke-static {v1}, Lcom/mycompany/app/lock/PinActivity;->u0(Lcom/mycompany/app/lock/PinActivity;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object v2, v1, Lcom/mycompany/app/lock/PinActivity;->v1:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v1, v2, v0}, Lcom/mycompany/app/main/MainUtil;->d7(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
