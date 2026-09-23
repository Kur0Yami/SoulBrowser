.class Lcom/mycompany/app/wview/WebAreaMenu$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/wview/WebAreaMenu$5;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/wview/WebAreaMenu$5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/wview/WebAreaMenu$5$1;->c:Lcom/mycompany/app/wview/WebAreaMenu$5;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/wview/WebAreaMenu$5$1;->c:Lcom/mycompany/app/wview/WebAreaMenu$5;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/wview/WebAreaMenu$5;->c:Lcom/mycompany/app/wview/WebAreaMenu;

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/mycompany/app/wview/WebAreaMenu;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lcom/mycompany/app/wview/WebAreaMenu;->g:Lcom/mycompany/app/wview/WebAreaMenu$WebAreaMenuListener;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-interface {v1}, Lcom/mycompany/app/wview/WebAreaMenu$WebAreaMenuListener;->b()V

    .line 15
    .line 16
    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    iput-boolean v1, v0, Lcom/mycompany/app/wview/WebAreaMenu;->m:Z

    .line 19
    .line 20
    return-void
.end method
