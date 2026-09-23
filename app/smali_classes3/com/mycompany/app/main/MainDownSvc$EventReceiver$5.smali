.class Lcom/mycompany/app/main/MainDownSvc$EventReceiver$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainDownSvc$EventReceiver;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainDownSvc$EventReceiver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainDownSvc$EventReceiver$5;->c:Lcom/mycompany/app/main/MainDownSvc$EventReceiver;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc$EventReceiver$5;->c:Lcom/mycompany/app/main/MainDownSvc$EventReceiver;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/MainDownSvc$EventReceiver;->a:Lcom/mycompany/app/main/MainDownSvc;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/mycompany/app/main/MainDownSvc;->a(Lcom/mycompany/app/main/MainDownSvc;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
