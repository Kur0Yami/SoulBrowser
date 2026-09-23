.class Lcom/mycompany/app/main/list/MainListDown$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/list/MainListDown;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/list/MainListDown;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/list/MainListDown$18;->c:Lcom/mycompany/app/main/list/MainListDown;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/main/list/MainListDown$18;->c:Lcom/mycompany/app/main/list/MainListDown;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 6
    .line 7
    const-class v3, Lcom/mycompany/app/cast/ExpandedControlsActivity;

    .line 8
    .line 9
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, v1, Lcom/mycompany/app/main/list/MainListDown;->U1:Lcom/mycompany/app/cast/CastUtil;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/mycompany/app/cast/CastUtil;->b()V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-object v0, v1, Lcom/mycompany/app/main/list/MainListDown;->U1:Lcom/mycompany/app/cast/CastUtil;

    .line 24
    .line 25
    :cond_0
    return-void
.end method
