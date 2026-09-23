.class Lcom/mycompany/app/web/WebVideoFull$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebVideoFull$8;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebVideoFull$8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoFull$8$1;->c:Lcom/mycompany/app/web/WebVideoFull$8;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull$8$1;->c:Lcom/mycompany/app/web/WebVideoFull$8;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebVideoFull$8;->c:Lcom/mycompany/app/web/WebVideoFull;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->f:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-boolean v2, v0, Lcom/mycompany/app/web/WebVideoFull;->W:Z

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->c:Lcom/mycompany/app/main/MainActivity;

    .line 15
    .line 16
    sget v2, Lnet/kaki87/soul2/testing/R$string;->not_support_video:I

    .line 17
    .line 18
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lcom/mycompany/app/web/WebVideoFull;->E(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    sget-boolean v2, Lcom/mycompany/app/pref/PrefVideo;->p:Z

    .line 26
    .line 27
    xor-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    sput-boolean v2, Lcom/mycompany/app/pref/PrefVideo;->p:Z

    .line 30
    .line 31
    const/16 v3, 0xd

    .line 32
    .line 33
    const-string v4, "mLoop"

    .line 34
    .line 35
    invoke-static {v3, v1, v4, v2}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebVideoFull;->e0()V

    .line 39
    .line 40
    .line 41
    sget-boolean v1, Lcom/mycompany/app/pref/PrefVideo;->p:Z

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->c:Lcom/mycompany/app/main/MainActivity;

    .line 46
    .line 47
    sget v2, Lnet/kaki87/soul2/testing/R$string;->repeat_on:I

    .line 48
    .line 49
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->c:Lcom/mycompany/app/main/MainActivity;

    .line 54
    .line 55
    sget v2, Lnet/kaki87/soul2/testing/R$string;->repeat_off:I

    .line 56
    .line 57
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 58
    .line 59
    .line 60
    :goto_0
    sget-boolean v1, Lcom/mycompany/app/pref/PrefVideo;->p:Z

    .line 61
    .line 62
    invoke-static {v0, v1}, Lcom/mycompany/app/web/WebVideoFull;->O(Lcom/mycompany/app/web/WebVideoFull;Z)V

    .line 63
    .line 64
    .line 65
    invoke-static {v0}, Lcom/mycompany/app/web/WebVideoFull;->E(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method
