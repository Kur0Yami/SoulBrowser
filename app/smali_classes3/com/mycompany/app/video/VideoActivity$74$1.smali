.class Lcom/mycompany/app/video/VideoActivity$74$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/video/VideoActivity$74;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoActivity$74;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity$74$1;->c:Lcom/mycompany/app/video/VideoActivity$74;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity$74$1;->c:Lcom/mycompany/app/video/VideoActivity$74;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/video/VideoActivity$74;->b:Lcom/mycompany/app/video/VideoActivity;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/mycompany/app/video/VideoActivity;->e()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual {v1, v2}, Lcom/mycompany/app/video/VideoActivity;->A(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, v0, Lcom/mycompany/app/video/VideoActivity$74;->b:Lcom/mycompany/app/video/VideoActivity;

    .line 13
    .line 14
    iget-object v1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 15
    .line 16
    iget-object v2, v0, Lcom/mycompany/app/video/VideoActivity;->J2:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v3, v0, Lcom/mycompany/app/video/VideoActivity;->G3:Ljava/lang/String;

    .line 19
    .line 20
    iget v4, v0, Lcom/mycompany/app/video/VideoActivity;->H3:I

    .line 21
    .line 22
    iget v0, v0, Lcom/mycompany/app/video/VideoActivity;->I3:I

    .line 23
    .line 24
    invoke-static {v1, v2, v3, v4, v0}, Lcom/mycompany/app/db/book/DbBookSub;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
