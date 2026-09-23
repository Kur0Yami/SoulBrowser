.class Lcom/mycompany/app/view/MyProgressBar$4;
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
    iput-object p1, p0, Lcom/mycompany/app/view/MyProgressBar$4;->c:Lcom/mycompany/app/view/MyProgressBar;

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
    iget-object v1, p0, Lcom/mycompany/app/view/MyProgressBar$4;->c:Lcom/mycompany/app/view/MyProgressBar;

    .line 3
    .line 4
    iput-boolean v0, v1, Lcom/mycompany/app/view/MyProgressBar;->J:Z

    .line 5
    .line 6
    iget v0, v1, Lcom/mycompany/app/view/MyProgressBar;->I:F

    .line 7
    .line 8
    invoke-static {v1, v0}, Lcom/mycompany/app/view/MyProgressBar;->a(Lcom/mycompany/app/view/MyProgressBar;F)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
