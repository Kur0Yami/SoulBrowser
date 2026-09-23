.class Lcom/mycompany/app/video/VideoActivity$54;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSetDown$SetDownListener;


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
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity$54;->a:Lcom/mycompany/app/video/VideoActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity$54;->a:Lcom/mycompany/app/video/VideoActivity;

    .line 2
    .line 3
    iget-object v3, v0, Lcom/mycompany/app/video/VideoActivity;->f4:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v5, v0, Lcom/mycompany/app/video/VideoActivity;->g4:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v6, v0, Lcom/mycompany/app/video/VideoActivity;->h4:Ljava/lang/String;

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput-object p1, v0, Lcom/mycompany/app/video/VideoActivity;->f4:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p1, v0, Lcom/mycompany/app/video/VideoActivity;->g4:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p1, v0, Lcom/mycompany/app/video/VideoActivity;->h4:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v4, v0, Lcom/mycompany/app/video/VideoActivity;->o2:Ljava/lang/String;

    .line 17
    .line 18
    move-object v1, p2

    .line 19
    move-object v2, p3

    .line 20
    invoke-static/range {v0 .. v6}, Lcom/mycompany/app/main/MainUtil;->G4(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    iput-boolean p1, v0, Lcom/mycompany/app/video/VideoActivity;->i3:Z

    .line 25
    .line 26
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity$54;->a:Lcom/mycompany/app/video/VideoActivity;

    .line 27
    .line 28
    iget-boolean p2, p1, Lcom/mycompany/app/video/VideoActivity;->i3:Z

    .line 29
    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    const/4 p2, 0x1

    .line 33
    invoke-virtual {p1, p2}, Lcom/mycompany/app/video/VideoActivity;->L1(Z)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method
