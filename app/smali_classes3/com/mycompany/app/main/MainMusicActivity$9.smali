.class Lcom/mycompany/app/main/MainMusicActivity$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainMusicActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainMusicActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainMusicActivity$9;->c:Lcom/mycompany/app/main/MainMusicActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/main/MainMusicActivity$9;->c:Lcom/mycompany/app/main/MainMusicActivity;

    .line 2
    .line 3
    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p1, Lcom/mycompany/app/main/MainMusicActivity;->t1:Z

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/mycompany/app/main/MainMusicActivity;->B0()V

    .line 7
    .line 8
    .line 9
    sget p3, Lnet/kaki87/soul2/testing/R$string;->play_error:I

    .line 10
    .line 11
    invoke-static {p1, p3}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 12
    .line 13
    .line 14
    return p2
.end method
