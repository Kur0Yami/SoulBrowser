.class Lcom/mycompany/app/wview/WebAreaView$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/wview/WebAreaView$6;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/wview/WebAreaView$6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/wview/WebAreaView$6$1;->c:Lcom/mycompany/app/wview/WebAreaView$6;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/wview/WebAreaView$6$1;->c:Lcom/mycompany/app/wview/WebAreaView$6;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/wview/WebAreaView$6;->c:Lcom/mycompany/app/wview/WebAreaView;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/wview/WebAreaView;->g:Lcom/mycompany/app/wview/WebAreaView$WebAreaListener;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v1}, Lcom/mycompany/app/wview/WebAreaView$WebAreaListener;->a()V

    .line 10
    .line 11
    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    iput-boolean v1, v0, Lcom/mycompany/app/wview/WebAreaView;->o:Z

    .line 14
    .line 15
    return-void
.end method
