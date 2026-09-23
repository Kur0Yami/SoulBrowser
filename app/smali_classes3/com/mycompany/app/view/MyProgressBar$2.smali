.class Lcom/mycompany/app/view/MyProgressBar$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/view/MyProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyProgressBar;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyProgressBar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyProgressBar$2;->c:Lcom/mycompany/app/view/MyProgressBar;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyProgressBar$2;->c:Lcom/mycompany/app/view/MyProgressBar;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/view/MyProgressBar;->q:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-virtual {v0, v3, v1, v2}, Lcom/mycompany/app/view/MyProgressBar;->k(ZILcom/mycompany/app/view/MyProgressBar$MyProgressListener;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
