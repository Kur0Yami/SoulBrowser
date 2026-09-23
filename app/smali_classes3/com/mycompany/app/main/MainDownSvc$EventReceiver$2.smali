.class Lcom/mycompany/app/main/MainDownSvc$EventReceiver$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:J

.field public final synthetic f:Lcom/mycompany/app/main/MainDownSvc$EventReceiver;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainDownSvc$EventReceiver;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainDownSvc$EventReceiver$2;->f:Lcom/mycompany/app/main/MainDownSvc$EventReceiver;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/mycompany/app/main/MainDownSvc$EventReceiver$2;->c:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc$EventReceiver$2;->f:Lcom/mycompany/app/main/MainDownSvc$EventReceiver;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/MainDownSvc$EventReceiver;->a:Lcom/mycompany/app/main/MainDownSvc;

    .line 4
    .line 5
    sget v1, Lcom/mycompany/app/main/MainDownSvc;->V:I

    .line 6
    .line 7
    iget-wide v1, p0, Lcom/mycompany/app/main/MainDownSvc$EventReceiver$2;->c:J

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/main/MainDownSvc;->U(J)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
