.class Lcom/mycompany/app/video/VideoActivity$66;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/video/VideoActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity$66;->a:Lcom/mycompany/app/video/VideoActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    sget v0, Lcom/mycompany/app/video/VideoActivity;->r4:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity$66;->a:Lcom/mycompany/app/video/VideoActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/video/VideoActivity;->n1()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 4

    .line 1
    sget-object p1, Lcom/mycompany/app/web/WebVideoFull;->o1:[F

    .line 2
    .line 3
    rem-int/lit8 p2, p2, 0x8

    .line 4
    .line 5
    aget p1, p1, p2

    .line 6
    .line 7
    iget-object p2, p0, Lcom/mycompany/app/video/VideoActivity$66;->a:Lcom/mycompany/app/video/VideoActivity;

    .line 8
    .line 9
    iget v0, p2, Lcom/mycompany/app/video/VideoActivity;->g3:F

    .line 10
    .line 11
    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iput p1, p2, Lcom/mycompany/app/video/VideoActivity;->g3:F

    .line 20
    .line 21
    iget-boolean p1, p2, Lcom/mycompany/app/video/VideoActivity;->s3:Z

    .line 22
    .line 23
    if-eqz p1, :cond_3

    .line 24
    .line 25
    iget-boolean p1, p2, Lcom/mycompany/app/video/VideoActivity;->B3:Z

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iput-boolean v1, p2, Lcom/mycompany/app/video/VideoActivity;->B3:Z

    .line 31
    .line 32
    iget-object p1, p2, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 33
    .line 34
    if-nez p1, :cond_2

    .line 35
    .line 36
    :goto_0
    return v1

    .line 37
    :cond_2
    new-instance p2, Lcom/mycompany/app/video/VideoActivity$66$1;

    .line 38
    .line 39
    invoke-direct {p2, p0}, Lcom/mycompany/app/video/VideoActivity$66$1;-><init>(Lcom/mycompany/app/video/VideoActivity$66;)V

    .line 40
    .line 41
    .line 42
    const-wide/16 v2, 0x1f4

    .line 43
    .line 44
    invoke-virtual {p1, p2, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 45
    .line 46
    .line 47
    return v1

    .line 48
    :cond_3
    new-instance p1, Lcom/mycompany/app/video/VideoActivity$66$2;

    .line 49
    .line 50
    invoke-direct {p1, p0}, Lcom/mycompany/app/video/VideoActivity$66$2;-><init>(Lcom/mycompany/app/video/VideoActivity$66;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 54
    .line 55
    .line 56
    return v1
.end method
