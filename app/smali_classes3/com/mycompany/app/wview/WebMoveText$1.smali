.class Lcom/mycompany/app/wview/WebMoveText$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/wview/WebMoveText;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/wview/WebMoveText;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/wview/WebMoveText$1;->c:Lcom/mycompany/app/wview/WebMoveText;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/wview/WebMoveText$1;->c:Lcom/mycompany/app/wview/WebMoveText;

    .line 2
    .line 3
    iget v0, p1, Lcom/mycompany/app/wview/WebMoveText;->C:I

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-boolean v0, p1, Lcom/mycompany/app/wview/WebMoveText;->n:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p1, Lcom/mycompany/app/wview/WebMoveText;->n:Z

    .line 15
    .line 16
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZtri;->t0:Z

    .line 17
    .line 18
    xor-int/2addr v0, v1

    .line 19
    sput-boolean v0, Lcom/mycompany/app/pref/PrefZtri;->t0:Z

    .line 20
    .line 21
    iget-object v1, p1, Lcom/mycompany/app/wview/WebMoveText;->m:Landroid/content/Context;

    .line 22
    .line 23
    const/16 v2, 0x11

    .line 24
    .line 25
    const-string v3, "mMoveLong"

    .line 26
    .line 27
    invoke-static {v2, v1, v3, v0}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Lcom/mycompany/app/wview/WebMoveText$1$1;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcom/mycompany/app/wview/WebMoveText$1$1;-><init>(Lcom/mycompany/app/wview/WebMoveText$1;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    return-void
.end method
