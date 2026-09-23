.class Lcom/mycompany/app/web/WebVideoFull$76;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebVideoFull;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebVideoFull;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoFull$76;->c:Lcom/mycompany/app/web/WebVideoFull;

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
    iget-object v1, p0, Lcom/mycompany/app/web/WebVideoFull$76;->c:Lcom/mycompany/app/web/WebVideoFull;

    .line 3
    .line 4
    iput-boolean v0, v1, Lcom/mycompany/app/web/WebVideoFull;->d0:Z

    .line 5
    .line 6
    const-wide/16 v2, -0x1

    .line 7
    .line 8
    iput-wide v2, v1, Lcom/mycompany/app/web/WebVideoFull;->g0:J

    .line 9
    .line 10
    return-void
.end method
