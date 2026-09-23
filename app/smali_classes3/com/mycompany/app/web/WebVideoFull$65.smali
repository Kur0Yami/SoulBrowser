.class Lcom/mycompany/app/web/WebVideoFull$65;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/web/WebVideoFull;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


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
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoFull$65;->c:Lcom/mycompany/app/web/WebVideoFull;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/mycompany/app/web/WebVideoFull$65;->c:Lcom/mycompany/app/web/WebVideoFull;

    .line 3
    .line 4
    iput-boolean v0, v1, Lcom/mycompany/app/web/WebVideoFull;->c1:Z

    .line 5
    .line 6
    invoke-static {v1}, Lcom/mycompany/app/web/WebVideoFull;->K(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
