.class Lcom/mycompany/app/web/WebNestFrame$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:J

.field public final synthetic f:Lcom/mycompany/app/web/WebNestFrame;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebNestFrame;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebNestFrame$3;->f:Lcom/mycompany/app/web/WebNestFrame;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/mycompany/app/web/WebNestFrame$3;->c:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestFrame$3;->f:Lcom/mycompany/app/web/WebNestFrame;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/mycompany/app/web/WebNestFrame$3;->c:J

    .line 4
    .line 5
    invoke-static {v0, v1, v2}, Lcom/mycompany/app/web/WebNestFrame;->c(Lcom/mycompany/app/web/WebNestFrame;J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
