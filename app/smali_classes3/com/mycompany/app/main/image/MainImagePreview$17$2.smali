.class Lcom/mycompany/app/main/image/MainImagePreview$17$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/image/MainImagePreview$17;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImagePreview$17;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview$17$2;->c:Lcom/mycompany/app/main/image/MainImagePreview$17;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview$17$2;->c:Lcom/mycompany/app/main/image/MainImagePreview$17;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImagePreview$17;->c:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 4
    .line 5
    sget-boolean v1, Lcom/mycompany/app/main/image/MainImagePreview;->E2:Z

    .line 6
    .line 7
    new-instance v1, Lcom/mycompany/app/main/image/MainImagePreview$16;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Lcom/mycompany/app/main/image/MainImagePreview$16;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
