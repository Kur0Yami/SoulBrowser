.class public Lcom/mycompany/app/video/VideoActivity;
.super Lcom/mycompany/app/setting/CastActivity;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/video/VideoControl$ControlListener;
.implements Lcom/mycompany/app/zoom/ZoomVideoAttacher$VideoAttacherListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/video/VideoActivity$SystemRunnable;,
        Lcom/mycompany/app/video/VideoActivity$EventHandler;,
        Lcom/mycompany/app/video/VideoActivity$VideoCastListener;,
        Lcom/mycompany/app/video/VideoActivity$PlayTask;,
        Lcom/mycompany/app/video/VideoActivity$LocalWebViewClient;,
        Lcom/mycompany/app/video/VideoActivity$WebAppInterface;,
        Lcom/mycompany/app/video/VideoActivity$CropTask;,
        Lcom/mycompany/app/video/VideoActivity$SubTask;,
        Lcom/mycompany/app/video/VideoActivity$EventReceiver;
    }
.end annotation


# static fields
.field public static final synthetic r4:I


# instance fields
.field public A2:Z

.field public A3:Z

.field public B2:Z

.field public B3:Z

.field public C1:I

.field public C2:Z

.field public C3:Lcom/mycompany/app/video/VideoSubLayout;

.field public D1:Z

.field public D2:I

.field public D3:Lcom/mycompany/app/video/VideoSubLayout;

.field public E1:Z

.field public E2:I

.field public E3:Lcom/mycompany/app/web/WebVideoProgress;

.field public F1:Z

.field public F2:Z

.field public F3:Lcom/mycompany/app/view/MyTextView;

.field public G1:Z

.field public G2:I

.field public G3:Ljava/lang/String;

.field public H1:Z

.field public H2:Z

.field public H3:I

.field public I1:Landroid/view/View;

.field public I2:Z

.field public I3:I

.field public J1:Lcom/mycompany/app/video/VideoActivity$SystemRunnable;

.field public J2:Ljava/lang/String;

.field public J3:Lcom/mycompany/app/video/VideoActivity$SubTask;

.field public K1:Lcom/mycompany/app/view/MySizeFrame;

.field public K2:I

.field public K3:Ljava/util/ArrayList;

.field public L1:Landroid/view/TextureView;

.field public L2:I

.field public L3:I

.field public M1:Lcom/mycompany/app/video/VideoControl;

.field public M2:I

.field public M3:I

.field public N1:Lcom/mycompany/app/web/WebVideoProgress;

.field public N2:I

.field public N3:Lcom/mycompany/app/video/VideoActivity$EventHandler;

.field public O1:Lcom/mycompany/app/web/WebVideoProgress;

.field public O2:I

.field public O3:Lcom/mycompany/app/view/MyPopupMenu;

.field public P1:Lcom/mycompany/app/web/WebVideoProgress;

.field public P2:I

.field public P3:Lcom/mycompany/app/view/MyPopupMenu;

.field public Q1:Lcom/mycompany/app/view/MyCoverView;

.field public Q2:I

.field public Q3:Lcom/mycompany/app/dialog/DialogSeekSub;

.field public R1:Lcom/mycompany/app/view/MyFadeFrame;

.field public R2:I

.field public R3:Z

.field public S1:Lcom/mycompany/app/view/MyFadeFrame;

.field public S2:Z

.field public S3:J

.field public T1:Lcom/mycompany/app/zoom/ZoomVideoAttacher;

.field public T2:Z

.field public T3:Landroid/media/MediaPlayer;

.field public U1:Landroid/view/GestureDetector;

.field public U2:Lcom/mycompany/app/video/VideoActivity$CropTask;

.field public U3:Ljava/lang/String;

.field public V1:Z

.field public V2:Lcom/mycompany/app/dialog/DialogCapture;

.field public V3:Ljava/lang/String;

.field public W1:F

.field public W2:Lcom/mycompany/app/dialog/DialogSeekBright;

.field public W3:Z

.field public X1:F

.field public X2:Lcom/mycompany/app/dialog/DialogSeekAudio;

.field public X3:Ljava/lang/String;

.field public Y1:I

.field public Y2:Lcom/mycompany/app/dialog/DialogConfirm;

.field public Y3:I

.field public Z1:Z

.field public Z2:Lcom/mycompany/app/dialog/DialogDownUrl;

.field public Z3:Z

.field public a2:Z

.field public a3:Lcom/mycompany/app/dialog/DialogSetDown;

.field public final a4:Ljava/lang/Runnable;

.field public b2:Landroid/app/PictureInPictureParams$Builder;

.field public b3:Lcom/mycompany/app/dialog/DialogConfirm;

.field public b4:I

.field public c2:Lcom/mycompany/app/video/VideoActivity$EventReceiver;

.field public c3:Lcom/mycompany/app/dialog/DialogOpenType;

.field public c4:I

.field public d2:Landroid/net/Uri;

.field public d3:Lcom/mycompany/app/view/MyPopupMenu;

.field public d4:Z

.field public e2:Ljava/lang/String;

.field public e3:Lcom/mycompany/app/view/MyPopupMenu;

.field public final e4:Ljava/lang/Runnable;

.field public f2:Z

.field public f3:Lcom/mycompany/app/view/MyPopupMenu;

.field public f4:Ljava/lang/String;

.field public g2:Ljava/lang/String;

.field public g3:F

.field public g4:Ljava/lang/String;

.field public h2:Ljava/lang/String;

.field public h3:Z

.field public h4:Ljava/lang/String;

.field public i2:Z

.field public i3:Z

.field public i4:Landroid/view/View;

.field public j2:Z

.field public j3:J

.field public j4:Z

.field public k2:Z

.field public k3:Z

.field public final k4:Ljava/lang/Runnable;

.field public l2:Z

.field public l3:Lcom/mycompany/app/video/VideoAudio;

.field public l4:Landroid/view/MotionEvent;

.field public m2:Z

.field public m3:Lcom/mycompany/app/view/MyPopupMenu;

.field public final m4:Ljava/lang/Runnable;

.field public n2:Ljava/lang/String;

.field public n3:Lcom/mycompany/app/view/MyWebSafe;

.field public n4:I

.field public o2:Ljava/lang/String;

.field public o3:Z

.field public o4:Z

.field public p2:Ljava/lang/String;

.field public p3:Z

.field public p4:Z

.field public q2:Ljava/lang/String;

.field public q3:Z

.field public q4:Lcom/mycompany/app/cast/CastUtil;

.field public r2:Ljava/lang/String;

.field public r3:Ljava/lang/String;

.field public s2:Landroid/graphics/SurfaceTexture;

.field public s3:Z

.field public t2:Landroid/view/Surface;

.field public t3:Z

.field public u2:Landroid/media/MediaPlayer;

.field public u3:Z

.field public v2:Lcom/mycompany/app/video/VideoActivity$PlayTask;

.field public v3:I

.field public w2:Z

.field public w3:Z

.field public x2:Z

.field public x3:I

.field public y2:Z

.field public y3:I

.field public z2:Z

.field public z3:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/video/VideoActivity$46;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/mycompany/app/video/VideoActivity$46;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->a4:Ljava/lang/Runnable;

    .line 10
    .line 11
    new-instance v0, Lcom/mycompany/app/video/VideoActivity$47;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/mycompany/app/video/VideoActivity$47;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->e4:Ljava/lang/Runnable;

    .line 17
    .line 18
    new-instance v0, Lcom/mycompany/app/video/VideoActivity$80;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/mycompany/app/video/VideoActivity$80;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->k4:Ljava/lang/Runnable;

    .line 24
    .line 25
    new-instance v0, Lcom/mycompany/app/video/VideoActivity$81;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/mycompany/app/video/VideoActivity$81;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->m4:Ljava/lang/Runnable;

    .line 31
    .line 32
    return-void
.end method

.method public static D0(Lcom/mycompany/app/video/VideoActivity;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->n3:Lcom/mycompany/app/view/MyWebSafe;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->D5(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_3

    .line 11
    .line 12
    iget-boolean p1, p0, Lcom/mycompany/app/video/VideoActivity;->q3:Z

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/mycompany/app/video/VideoActivity;->q3:Z

    .line 19
    .line 20
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->n3:Lcom/mycompany/app/view/MyWebSafe;

    .line 21
    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    new-instance v0, Lcom/mycompany/app/video/VideoActivity$39;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/mycompany/app/video/VideoActivity$39;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_3
    iget-boolean p1, p0, Lcom/mycompany/app/video/VideoActivity;->q3:Z

    .line 35
    .line 36
    if-eqz p1, :cond_4

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_4
    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lcom/mycompany/app/video/VideoActivity;->q3:Z

    .line 41
    .line 42
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->n3:Lcom/mycompany/app/view/MyWebSafe;

    .line 43
    .line 44
    if-nez p1, :cond_5

    .line 45
    .line 46
    :goto_0
    return-void

    .line 47
    :cond_5
    new-instance v0, Lcom/mycompany/app/video/VideoActivity$40;

    .line 48
    .line 49
    invoke-direct {v0, p0}, Lcom/mycompany/app/video/VideoActivity$40;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public static E0(Lcom/mycompany/app/video/VideoActivity;I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->x2:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->w2:Z

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->u2:Landroid/media/MediaPlayer;

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->L1:Landroid/view/TextureView;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    new-instance v1, Lcom/mycompany/app/video/VideoActivity$61;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/mycompany/app/video/VideoActivity$61;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 26
    .line 27
    .line 28
    int-to-long p0, p1

    .line 29
    invoke-virtual {v0, v1, p0, p1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/mycompany/app/video/VideoActivity;->x2:Z

    .line 35
    .line 36
    return-void
.end method

.method public static F0(Lcom/mycompany/app/video/VideoActivity;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->s3:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v0, p0, Lcom/mycompany/app/video/VideoActivity;->v3:I

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->n3:Lcom/mycompany/app/view/MyWebSafe;

    .line 12
    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 17
    .line 18
    if-nez v0, :cond_3

    .line 19
    .line 20
    :goto_0
    return-void

    .line 21
    :cond_3
    new-instance v1, Lcom/mycompany/app/video/VideoActivity$36;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/mycompany/app/video/VideoActivity$36;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 24
    .line 25
    .line 26
    const-wide/16 v2, 0x12c

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public static G0(Lcom/mycompany/app/video/VideoActivity;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->n3:Lcom/mycompany/app/view/MyWebSafe;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->s3:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->A1()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    const/4 v0, 0x1

    .line 15
    invoke-virtual {p0, v0}, Lcom/mycompany/app/video/VideoActivity;->G1(Z)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p0, v0}, Lcom/mycompany/app/video/VideoActivity;->m1(Z)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->e2:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->o2:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/mycompany/app/video/VideoActivity;->n3:Lcom/mycompany/app/view/MyWebSafe;

    .line 27
    .line 28
    if-nez v2, :cond_2

    .line 29
    .line 30
    :goto_0
    return-void

    .line 31
    :cond_2
    iget-object v2, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 32
    .line 33
    invoke-static {v2, v0, v1}, Lcom/mycompany/app/main/MainUtil;->v0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    iget-object p0, p0, Lcom/mycompany/app/video/VideoActivity;->n3:Lcom/mycompany/app/view/MyWebSafe;

    .line 40
    .line 41
    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_3
    iget-object p0, p0, Lcom/mycompany/app/video/VideoActivity;->n3:Lcom/mycompany/app/view/MyWebSafe;

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public static H0(Lcom/mycompany/app/video/VideoActivity;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->s3:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget v0, p0, Lcom/mycompany/app/video/VideoActivity;->v3:I

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    iget-object p0, p0, Lcom/mycompany/app/video/VideoActivity;->n3:Lcom/mycompany/app/view/MyWebSafe;

    .line 14
    .line 15
    if-nez p0, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    const-string v0, "(function(){var ele=document.querySelector(\"iframe[id=\'ytplayer\']\");if(ele){ele=ele.contentDocument.querySelector(\'video\');}if(ele){var pos=ele.currentTime;if(pos+10<ele.duration){ele.currentTime=pos+10;}else{ele.currentTime=ele.duration;}}})();"

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-static {p0, v0, v1}, Lcom/mycompany/app/main/MainUtil;->J(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_3
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->f()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-gtz v0, :cond_4

    .line 30
    .line 31
    :goto_0
    return-void

    .line 32
    :cond_4
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->e()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    add-int/lit16 v1, v1, 0x2710

    .line 37
    .line 38
    if-le v1, v0, :cond_5

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_5
    move v0, v1

    .line 42
    :goto_1
    invoke-virtual {p0, v0}, Lcom/mycompany/app/video/VideoActivity;->h(I)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public static I0(Lcom/mycompany/app/video/VideoActivity;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->s3:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget v0, p0, Lcom/mycompany/app/video/VideoActivity;->v3:I

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    iget-object p0, p0, Lcom/mycompany/app/video/VideoActivity;->n3:Lcom/mycompany/app/view/MyWebSafe;

    .line 14
    .line 15
    if-nez p0, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    const-string v0, "(function(){var ele=document.querySelector(\"iframe[id=\'ytplayer\']\");if(ele){ele=ele.contentDocument.querySelector(\'video\');}if(ele){var pos=ele.currentTime;if(pos>10){ele.currentTime=pos-10;}else{ele.currentTime=0;}}})();"

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-static {p0, v0, v1}, Lcom/mycompany/app/main/MainUtil;->J(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_3
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->f()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-gtz v0, :cond_4

    .line 30
    .line 31
    :goto_0
    return-void

    .line 32
    :cond_4
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->e()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    add-int/lit16 v0, v0, -0x2710

    .line 37
    .line 38
    if-gez v0, :cond_5

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    :cond_5
    invoke-virtual {p0, v0}, Lcom/mycompany/app/video/VideoActivity;->h(I)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public static J0(Lcom/mycompany/app/video/VideoActivity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->l3:Lcom/mycompany/app/video/VideoAudio;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/video/VideoAudio;->c()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->u2:Landroid/media/MediaPlayer;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->z2:Z

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p0, v1}, Lcom/mycompany/app/video/VideoActivity;->I1(Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/mycompany/app/video/VideoActivity;->G1(Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lcom/mycompany/app/video/VideoActivity;->m1(Z)V

    .line 24
    .line 25
    .line 26
    sget v0, Lnet/kaki87/soul2/testing/R$string;->play_error:I

    .line 27
    .line 28
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Lcom/mycompany/app/video/VideoActivity$28;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/mycompany/app/video/VideoActivity$28;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public static K0(Lcom/mycompany/app/video/VideoActivity;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->a4:Ljava/lang/Runnable;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-boolean v1, p0, Lcom/mycompany/app/video/VideoActivity;->Z3:Z

    .line 9
    .line 10
    if-nez v1, :cond_2

    .line 11
    .line 12
    iget v1, p0, Lcom/mycompany/app/video/VideoActivity;->Y3:I

    .line 13
    .line 14
    sget v2, Lcom/mycompany/app/pref/PrefVideo;->v:I

    .line 15
    .line 16
    if-ne v1, v2, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v1, 0x1

    .line 20
    iput-boolean v1, p0, Lcom/mycompany/app/video/VideoActivity;->Z3:Z

    .line 21
    .line 22
    iput v2, p0, Lcom/mycompany/app/video/VideoActivity;->Y3:I

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    sget v2, Lcom/mycompany/app/pref/PrefVideo;->v:I

    .line 29
    .line 30
    sget-boolean v3, Lcom/mycompany/app/pref/PrefVideo;->u:Z

    .line 31
    .line 32
    invoke-static {v1, v2, v3}, Lcom/mycompany/app/main/MainUtil;->g7(Landroid/view/Window;IZ)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 41
    .line 42
    const-wide/16 v1, 0x64

    .line 43
    .line 44
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 45
    .line 46
    .line 47
    :cond_2
    :goto_0
    return-void
.end method

.method public static L0(Lcom/mycompany/app/video/VideoActivity;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->e4:Ljava/lang/Runnable;

    .line 2
    .line 3
    iput p1, p0, Lcom/mycompany/app/video/VideoActivity;->b4:I

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-boolean v1, p0, Lcom/mycompany/app/video/VideoActivity;->d4:Z

    .line 11
    .line 12
    if-nez v1, :cond_2

    .line 13
    .line 14
    iget v1, p0, Lcom/mycompany/app/video/VideoActivity;->c4:I

    .line 15
    .line 16
    if-ne v1, p1, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v1, 0x1

    .line 20
    iput-boolean v1, p0, Lcom/mycompany/app/video/VideoActivity;->d4:Z

    .line 21
    .line 22
    iput p1, p0, Lcom/mycompany/app/video/VideoActivity;->c4:I

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/mycompany/app/video/VideoActivity;->h(I)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 33
    .line 34
    const-wide/16 v1, 0x64

    .line 35
    .line 36
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 37
    .line 38
    .line 39
    :cond_2
    :goto_0
    return-void
.end method

.method public static M0(Lcom/mycompany/app/video/VideoActivity;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->w2:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Lcom/mycompany/app/video/VideoActivity;->m1(Z)V

    .line 8
    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/mycompany/app/video/VideoActivity;->T2:Z

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {p0, v1}, Lcom/mycompany/app/video/VideoActivity;->E1(Z)V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->D3:Lcom/mycompany/app/video/VideoSubLayout;

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    iget-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->u2:Landroid/media/MediaPlayer;

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->e()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {p0, v1}, Lcom/mycompany/app/video/VideoActivity;->A(I)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->D3:Lcom/mycompany/app/video/VideoSubLayout;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/16 v2, 0x8

    .line 40
    .line 41
    if-eq v1, v2, :cond_2

    .line 42
    .line 43
    iget-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->u2:Landroid/media/MediaPlayer;

    .line 44
    .line 45
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    iget-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->N3:Lcom/mycompany/app/video/VideoActivity$EventHandler;

    .line 52
    .line 53
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Lcom/mycompany/app/video/VideoActivity;->N3:Lcom/mycompany/app/video/VideoActivity$EventHandler;

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 59
    .line 60
    .line 61
    :cond_2
    :goto_0
    return-void
.end method

.method public static N0(Lcom/mycompany/app/video/VideoActivity;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->l4:Landroid/view/MotionEvent;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/mycompany/app/video/VideoActivity;->A3:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_3

    .line 8
    .line 9
    :cond_0
    if-eqz v0, :cond_1d

    .line 10
    .line 11
    iget-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    goto/16 :goto_3

    .line 16
    .line 17
    :cond_1
    iget-boolean v2, p0, Lcom/mycompany/app/video/VideoActivity;->V1:Z

    .line 18
    .line 19
    if-nez v2, :cond_2

    .line 20
    .line 21
    goto/16 :goto_3

    .line 22
    .line 23
    :cond_2
    iget-boolean v2, p0, Lcom/mycompany/app/video/VideoActivity;->Z1:Z

    .line 24
    .line 25
    if-eqz v2, :cond_3

    .line 26
    .line 27
    goto/16 :goto_3

    .line 28
    .line 29
    :cond_3
    iget-boolean v2, v1, Lcom/mycompany/app/video/VideoControl;->n0:Z

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    const/4 v4, 0x0

    .line 33
    if-nez v2, :cond_1c

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/mycompany/app/video/VideoControl;->q()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_4

    .line 40
    .line 41
    goto/16 :goto_2

    .line 42
    .line 43
    :cond_4
    iget v1, p0, Lcom/mycompany/app/video/VideoActivity;->Y1:I

    .line 44
    .line 45
    const/4 v2, 0x2

    .line 46
    const/4 v5, 0x3

    .line 47
    if-nez v1, :cond_14

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    iget v6, p0, Lcom/mycompany/app/video/VideoActivity;->W1:F

    .line 54
    .line 55
    sub-float v6, v1, v6

    .line 56
    .line 57
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    iget v7, p0, Lcom/mycompany/app/video/VideoActivity;->X1:F

    .line 66
    .line 67
    sub-float/2addr v0, v7

    .line 68
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    cmpl-float v7, v6, v0

    .line 73
    .line 74
    if-lez v7, :cond_b

    .line 75
    .line 76
    sget v0, Lcom/mycompany/app/main/MainApp;->r1:I

    .line 77
    .line 78
    int-to-float v0, v0

    .line 79
    cmpl-float v0, v6, v0

    .line 80
    .line 81
    if-lez v0, :cond_1d

    .line 82
    .line 83
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->T1:Lcom/mycompany/app/zoom/ZoomVideoAttacher;

    .line 84
    .line 85
    if-eqz v0, :cond_7

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->i()Landroid/view/TextureView;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    if-nez v1, :cond_5

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_5
    invoke-virtual {v0}, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->e()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->f()Landroid/graphics/Matrix;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v0, v2}, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->g(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    if-nez v0, :cond_6

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_6
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    int-to-float v1, v1

    .line 117
    cmpl-float v0, v0, v1

    .line 118
    .line 119
    if-lez v0, :cond_7

    .line 120
    .line 121
    iput-boolean v3, p0, Lcom/mycompany/app/video/VideoActivity;->Z1:Z

    .line 122
    .line 123
    return-void

    .line 124
    :cond_7
    :goto_0
    sget-boolean v0, Lcom/mycompany/app/pref/PrefVideo;->s:Z

    .line 125
    .line 126
    if-eqz v0, :cond_1d

    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->f()I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-lez v0, :cond_9

    .line 133
    .line 134
    iput-boolean v4, p0, Lcom/mycompany/app/video/VideoActivity;->a2:Z

    .line 135
    .line 136
    iput v5, p0, Lcom/mycompany/app/video/VideoActivity;->Y1:I

    .line 137
    .line 138
    iget-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 139
    .line 140
    if-eqz v1, :cond_8

    .line 141
    .line 142
    invoke-virtual {v1, v3}, Lcom/mycompany/app/video/VideoControl;->o(Z)V

    .line 143
    .line 144
    .line 145
    :cond_8
    iget-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->N1:Lcom/mycompany/app/web/WebVideoProgress;

    .line 146
    .line 147
    invoke-virtual {v1, v4, v4}, Lcom/mycompany/app/view/MyFadeLinear;->d(ZZ)V

    .line 148
    .line 149
    .line 150
    iget-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->O1:Lcom/mycompany/app/web/WebVideoProgress;

    .line 151
    .line 152
    invoke-virtual {v1, v4, v4}, Lcom/mycompany/app/view/MyFadeLinear;->d(ZZ)V

    .line 153
    .line 154
    .line 155
    iget-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->P1:Lcom/mycompany/app/web/WebVideoProgress;

    .line 156
    .line 157
    int-to-long v4, v0

    .line 158
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->e()I

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    int-to-long v6, v0

    .line 163
    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/mycompany/app/web/WebVideoProgress;->n(JJ)V

    .line 164
    .line 165
    .line 166
    iget-object p0, p0, Lcom/mycompany/app/video/VideoActivity;->Q1:Lcom/mycompany/app/view/MyCoverView;

    .line 167
    .line 168
    invoke-virtual {p0, v3}, Lcom/mycompany/app/view/MyCoverView;->setSkipDraw(Z)V

    .line 169
    .line 170
    .line 171
    return-void

    .line 172
    :cond_9
    iput-boolean v3, p0, Lcom/mycompany/app/video/VideoActivity;->a2:Z

    .line 173
    .line 174
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 175
    .line 176
    if-eqz v0, :cond_a

    .line 177
    .line 178
    invoke-virtual {v0, v3}, Lcom/mycompany/app/video/VideoControl;->o(Z)V

    .line 179
    .line 180
    .line 181
    :cond_a
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->N1:Lcom/mycompany/app/web/WebVideoProgress;

    .line 182
    .line 183
    invoke-virtual {v0, v4, v4}, Lcom/mycompany/app/view/MyFadeLinear;->d(ZZ)V

    .line 184
    .line 185
    .line 186
    iget-object p0, p0, Lcom/mycompany/app/video/VideoActivity;->O1:Lcom/mycompany/app/web/WebVideoProgress;

    .line 187
    .line 188
    invoke-virtual {p0, v4, v4}, Lcom/mycompany/app/view/MyFadeLinear;->d(ZZ)V

    .line 189
    .line 190
    .line 191
    return-void

    .line 192
    :cond_b
    iget-boolean v5, p0, Lcom/mycompany/app/video/VideoActivity;->a2:Z

    .line 193
    .line 194
    if-eqz v5, :cond_c

    .line 195
    .line 196
    goto/16 :goto_3

    .line 197
    .line 198
    :cond_c
    sget v5, Lcom/mycompany/app/main/MainApp;->r1:I

    .line 199
    .line 200
    int-to-float v5, v5

    .line 201
    cmpl-float v0, v0, v5

    .line 202
    .line 203
    if-lez v0, :cond_1d

    .line 204
    .line 205
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->T1:Lcom/mycompany/app/zoom/ZoomVideoAttacher;

    .line 206
    .line 207
    if-eqz v0, :cond_f

    .line 208
    .line 209
    invoke-virtual {v0}, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->i()Landroid/view/TextureView;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    if-nez v5, :cond_d

    .line 214
    .line 215
    goto :goto_1

    .line 216
    :cond_d
    invoke-virtual {v0}, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->e()V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0}, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->f()Landroid/graphics/Matrix;

    .line 220
    .line 221
    .line 222
    move-result-object v6

    .line 223
    invoke-virtual {v0, v6}, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->g(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    if-nez v0, :cond_e

    .line 228
    .line 229
    goto :goto_1

    .line 230
    :cond_e
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 235
    .line 236
    .line 237
    move-result v5

    .line 238
    int-to-float v5, v5

    .line 239
    cmpl-float v0, v0, v5

    .line 240
    .line 241
    if-lez v0, :cond_f

    .line 242
    .line 243
    iput-boolean v3, p0, Lcom/mycompany/app/video/VideoActivity;->Z1:Z

    .line 244
    .line 245
    return-void

    .line 246
    :cond_f
    :goto_1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 247
    .line 248
    if-nez v0, :cond_10

    .line 249
    .line 250
    goto/16 :goto_3

    .line 251
    .line 252
    :cond_10
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    int-to-float v0, v0

    .line 257
    const/high16 v5, 0x40000000    # 2.0f

    .line 258
    .line 259
    div-float/2addr v0, v5

    .line 260
    cmpg-float v0, v1, v0

    .line 261
    .line 262
    if-gez v0, :cond_12

    .line 263
    .line 264
    sget-boolean v0, Lcom/mycompany/app/pref/PrefVideo;->r:Z

    .line 265
    .line 266
    if-eqz v0, :cond_1d

    .line 267
    .line 268
    iput v3, p0, Lcom/mycompany/app/video/VideoActivity;->Y1:I

    .line 269
    .line 270
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 271
    .line 272
    if-eqz v0, :cond_11

    .line 273
    .line 274
    invoke-virtual {v0, v3}, Lcom/mycompany/app/video/VideoControl;->o(Z)V

    .line 275
    .line 276
    .line 277
    :cond_11
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->O1:Lcom/mycompany/app/web/WebVideoProgress;

    .line 278
    .line 279
    invoke-virtual {v0, v4, v4}, Lcom/mycompany/app/view/MyFadeLinear;->d(ZZ)V

    .line 280
    .line 281
    .line 282
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->P1:Lcom/mycompany/app/web/WebVideoProgress;

    .line 283
    .line 284
    invoke-virtual {v0, v4, v4}, Lcom/mycompany/app/view/MyFadeLinear;->d(ZZ)V

    .line 285
    .line 286
    .line 287
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->N1:Lcom/mycompany/app/web/WebVideoProgress;

    .line 288
    .line 289
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebVideoProgress;->m()V

    .line 290
    .line 291
    .line 292
    iget-object p0, p0, Lcom/mycompany/app/video/VideoActivity;->Q1:Lcom/mycompany/app/view/MyCoverView;

    .line 293
    .line 294
    invoke-virtual {p0, v4}, Lcom/mycompany/app/view/MyCoverView;->setSkipDraw(Z)V

    .line 295
    .line 296
    .line 297
    return-void

    .line 298
    :cond_12
    sget-boolean v0, Lcom/mycompany/app/pref/PrefVideo;->q:Z

    .line 299
    .line 300
    if-eqz v0, :cond_1d

    .line 301
    .line 302
    iput v2, p0, Lcom/mycompany/app/video/VideoActivity;->Y1:I

    .line 303
    .line 304
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 305
    .line 306
    if-eqz v0, :cond_13

    .line 307
    .line 308
    invoke-virtual {v0, v3}, Lcom/mycompany/app/video/VideoControl;->o(Z)V

    .line 309
    .line 310
    .line 311
    :cond_13
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->N1:Lcom/mycompany/app/web/WebVideoProgress;

    .line 312
    .line 313
    invoke-virtual {v0, v4, v4}, Lcom/mycompany/app/view/MyFadeLinear;->d(ZZ)V

    .line 314
    .line 315
    .line 316
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->P1:Lcom/mycompany/app/web/WebVideoProgress;

    .line 317
    .line 318
    invoke-virtual {v0, v4, v4}, Lcom/mycompany/app/view/MyFadeLinear;->d(ZZ)V

    .line 319
    .line 320
    .line 321
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->O1:Lcom/mycompany/app/web/WebVideoProgress;

    .line 322
    .line 323
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebVideoProgress;->m()V

    .line 324
    .line 325
    .line 326
    iget-object p0, p0, Lcom/mycompany/app/video/VideoActivity;->Q1:Lcom/mycompany/app/view/MyCoverView;

    .line 327
    .line 328
    invoke-virtual {p0, v4}, Lcom/mycompany/app/view/MyCoverView;->setSkipDraw(Z)V

    .line 329
    .line 330
    .line 331
    return-void

    .line 332
    :cond_14
    const/high16 v6, -0x40800000    # -1.0f

    .line 333
    .line 334
    if-ne v1, v3, :cond_15

    .line 335
    .line 336
    iget-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->N1:Lcom/mycompany/app/web/WebVideoProgress;

    .line 337
    .line 338
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    .line 339
    .line 340
    .line 341
    move-result v2

    .line 342
    iget v3, p0, Lcom/mycompany/app/video/VideoActivity;->X1:F

    .line 343
    .line 344
    sub-float/2addr v2, v3

    .line 345
    invoke-virtual {v1, v0, v2}, Lcom/mycompany/app/web/WebVideoProgress;->k(Landroid/view/MotionEvent;F)F

    .line 346
    .line 347
    .line 348
    move-result v1

    .line 349
    invoke-static {v1, v6}, Ljava/lang/Float;->compare(FF)I

    .line 350
    .line 351
    .line 352
    move-result v1

    .line 353
    if-nez v1, :cond_1d

    .line 354
    .line 355
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    .line 356
    .line 357
    .line 358
    move-result v0

    .line 359
    iput v0, p0, Lcom/mycompany/app/video/VideoActivity;->X1:F

    .line 360
    .line 361
    return-void

    .line 362
    :cond_15
    if-ne v1, v2, :cond_16

    .line 363
    .line 364
    iget-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->O1:Lcom/mycompany/app/web/WebVideoProgress;

    .line 365
    .line 366
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    .line 367
    .line 368
    .line 369
    move-result v2

    .line 370
    iget v3, p0, Lcom/mycompany/app/video/VideoActivity;->X1:F

    .line 371
    .line 372
    sub-float/2addr v2, v3

    .line 373
    invoke-virtual {v1, v0, v2}, Lcom/mycompany/app/web/WebVideoProgress;->k(Landroid/view/MotionEvent;F)F

    .line 374
    .line 375
    .line 376
    move-result v1

    .line 377
    invoke-static {v1, v6}, Ljava/lang/Float;->compare(FF)I

    .line 378
    .line 379
    .line 380
    move-result v1

    .line 381
    if-nez v1, :cond_1d

    .line 382
    .line 383
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    .line 384
    .line 385
    .line 386
    move-result v0

    .line 387
    iput v0, p0, Lcom/mycompany/app/video/VideoActivity;->X1:F

    .line 388
    .line 389
    return-void

    .line 390
    :cond_16
    if-ne v1, v5, :cond_18

    .line 391
    .line 392
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    .line 393
    .line 394
    .line 395
    move-result v1

    .line 396
    iget v2, p0, Lcom/mycompany/app/video/VideoActivity;->W1:F

    .line 397
    .line 398
    sub-float/2addr v1, v2

    .line 399
    sget v2, Lcom/mycompany/app/pref/PrefVideo;->t:I

    .line 400
    .line 401
    if-lez v2, :cond_17

    .line 402
    .line 403
    const/16 v3, 0x64

    .line 404
    .line 405
    if-eq v2, v3, :cond_17

    .line 406
    .line 407
    int-to-float v2, v2

    .line 408
    const/high16 v3, 0x42c80000    # 100.0f

    .line 409
    .line 410
    div-float/2addr v2, v3

    .line 411
    mul-float/2addr v1, v2

    .line 412
    :cond_17
    iget-object v2, p0, Lcom/mycompany/app/video/VideoActivity;->P1:Lcom/mycompany/app/web/WebVideoProgress;

    .line 413
    .line 414
    invoke-virtual {v2, v0, v1}, Lcom/mycompany/app/web/WebVideoProgress;->k(Landroid/view/MotionEvent;F)F

    .line 415
    .line 416
    .line 417
    move-result v1

    .line 418
    invoke-static {v1, v6}, Ljava/lang/Float;->compare(FF)I

    .line 419
    .line 420
    .line 421
    move-result v1

    .line 422
    if-nez v1, :cond_1d

    .line 423
    .line 424
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    .line 425
    .line 426
    .line 427
    move-result v0

    .line 428
    iput v0, p0, Lcom/mycompany/app/video/VideoActivity;->W1:F

    .line 429
    .line 430
    return-void

    .line 431
    :cond_18
    const/4 v2, 0x4

    .line 432
    if-ne v1, v2, :cond_1d

    .line 433
    .line 434
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    .line 435
    .line 436
    .line 437
    move-result v0

    .line 438
    iget v1, p0, Lcom/mycompany/app/video/VideoActivity;->X1:F

    .line 439
    .line 440
    sub-float/2addr v0, v1

    .line 441
    float-to-int v0, v0

    .line 442
    if-eqz v0, :cond_1d

    .line 443
    .line 444
    iget-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->D3:Lcom/mycompany/app/video/VideoSubLayout;

    .line 445
    .line 446
    if-nez v1, :cond_19

    .line 447
    .line 448
    goto :goto_3

    .line 449
    :cond_19
    invoke-virtual {v1, v0}, Lcom/mycompany/app/video/VideoSubLayout;->g(I)I

    .line 450
    .line 451
    .line 452
    move-result v1

    .line 453
    const/4 v2, -0x1

    .line 454
    if-ne v1, v2, :cond_1a

    .line 455
    .line 456
    goto :goto_3

    .line 457
    :cond_1a
    iget-object v2, p0, Lcom/mycompany/app/video/VideoActivity;->F3:Lcom/mycompany/app/view/MyTextView;

    .line 458
    .line 459
    if-eqz v2, :cond_1b

    .line 460
    .line 461
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v1

    .line 465
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    .line 467
    .line 468
    iget-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->E3:Lcom/mycompany/app/web/WebVideoProgress;

    .line 469
    .line 470
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyFadeLinear;->setVisibility(I)V

    .line 471
    .line 472
    .line 473
    :cond_1b
    iget v1, p0, Lcom/mycompany/app/video/VideoActivity;->X1:F

    .line 474
    .line 475
    int-to-float v0, v0

    .line 476
    add-float/2addr v1, v0

    .line 477
    iput v1, p0, Lcom/mycompany/app/video/VideoActivity;->X1:F

    .line 478
    .line 479
    return-void

    .line 480
    :cond_1c
    :goto_2
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->t1()V

    .line 481
    .line 482
    .line 483
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->N1:Lcom/mycompany/app/web/WebVideoProgress;

    .line 484
    .line 485
    invoke-virtual {v0, v3, v4}, Lcom/mycompany/app/view/MyFadeLinear;->d(ZZ)V

    .line 486
    .line 487
    .line 488
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->O1:Lcom/mycompany/app/web/WebVideoProgress;

    .line 489
    .line 490
    invoke-virtual {v0, v3, v4}, Lcom/mycompany/app/view/MyFadeLinear;->d(ZZ)V

    .line 491
    .line 492
    .line 493
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->P1:Lcom/mycompany/app/web/WebVideoProgress;

    .line 494
    .line 495
    invoke-virtual {v0, v3, v4}, Lcom/mycompany/app/view/MyFadeLinear;->d(ZZ)V

    .line 496
    .line 497
    .line 498
    iget-object p0, p0, Lcom/mycompany/app/video/VideoActivity;->Q1:Lcom/mycompany/app/view/MyCoverView;

    .line 499
    .line 500
    invoke-virtual {p0, v4}, Lcom/mycompany/app/view/MyCoverView;->setSkipDraw(Z)V

    .line 501
    .line 502
    .line 503
    :cond_1d
    :goto_3
    return-void
.end method

.method public static O0(Lcom/mycompany/app/video/VideoActivity;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->s3:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->n3:Lcom/mycompany/app/view/MyWebSafe;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->e2:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->e2:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->e2:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->v1()V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 34
    .line 35
    if-nez p1, :cond_3

    .line 36
    .line 37
    :goto_0
    return-void

    .line 38
    :cond_3
    new-instance v0, Lcom/mycompany/app/video/VideoActivity$35;

    .line 39
    .line 40
    invoke-direct {v0, p0}, Lcom/mycompany/app/video/VideoActivity$35;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public static P0(Lcom/mycompany/app/video/VideoActivity;Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->y1()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->j1()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/mycompany/app/video/VideoControl;->o(Z)V

    .line 17
    .line 18
    .line 19
    :cond_1
    iput-boolean v1, p0, Lcom/mycompany/app/video/VideoActivity;->z3:Z

    .line 20
    .line 21
    sput-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 22
    .line 23
    iput-boolean p1, p0, Lcom/mycompany/app/video/VideoActivity;->j4:Z

    .line 24
    .line 25
    if-eqz p1, :cond_3

    .line 26
    .line 27
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->l3:Lcom/mycompany/app/video/VideoAudio;

    .line 28
    .line 29
    if-nez p1, :cond_2

    .line 30
    .line 31
    :goto_0
    return-void

    .line 32
    :cond_2
    sget v0, Lnet/kaki87/soul2/testing/R$string;->audio_sync:I

    .line 33
    .line 34
    iget p1, p1, Lcom/mycompany/app/video/VideoAudio;->h:I

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_3
    sget v0, Lnet/kaki87/soul2/testing/R$string;->sub_sync:I

    .line 38
    .line 39
    iget p1, p0, Lcom/mycompany/app/video/VideoActivity;->H3:I

    .line 40
    .line 41
    :goto_1
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekSub;

    .line 42
    .line 43
    new-instance v3, Lcom/mycompany/app/video/VideoActivity$75;

    .line 44
    .line 45
    invoke-direct {v3, p0}, Lcom/mycompany/app/video/VideoActivity$75;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {v2, p0, v0, p1, v3}, Lcom/mycompany/app/dialog/DialogSeekSub;-><init>(Lcom/mycompany/app/video/VideoActivity;IILcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;)V

    .line 49
    .line 50
    .line 51
    iput-object v2, p0, Lcom/mycompany/app/video/VideoActivity;->Q3:Lcom/mycompany/app/dialog/DialogSeekSub;

    .line 52
    .line 53
    new-instance p1, Lcom/mycompany/app/video/VideoActivity$76;

    .line 54
    .line 55
    invoke-direct {p1, p0}, Lcom/mycompany/app/video/VideoActivity$76;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, p1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 59
    .line 60
    .line 61
    iget-object p0, p0, Lcom/mycompany/app/video/VideoActivity;->Q3:Lcom/mycompany/app/dialog/DialogSeekSub;

    .line 62
    .line 63
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyDialogBottom;->E:Z

    .line 64
    .line 65
    return-void
.end method

.method public static Y0(Landroid/content/Context;)Lcom/mycompany/app/view/MyFadeFrame;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    sget v1, Lnet/kaki87/soul2/testing/R$id;->wv_updn_view:I

    .line 8
    .line 9
    new-instance v2, Lcom/mycompany/app/view/MyFadeFrame;

    .line 10
    .line 11
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MyFadeFrame;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    const/high16 v3, -0x5f000000

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 17
    .line 18
    .line 19
    new-instance v3, Landroid/widget/RelativeLayout;

    .line 20
    .line 21
    invoke-direct {v3, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 25
    .line 26
    const/4 v5, -0x1

    .line 27
    const/4 v6, -0x2

    .line 28
    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 29
    .line 30
    .line 31
    const v7, 0x800013

    .line 32
    .line 33
    .line 34
    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 35
    .line 36
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    .line 38
    .line 39
    new-instance v4, Landroid/widget/LinearLayout;

    .line 40
    .line 41
    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, v1}, Landroid/view/View;->setId(I)V

    .line 45
    .line 46
    .line 47
    const/4 v7, 0x0

    .line 48
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 55
    .line 56
    .line 57
    new-instance v8, Landroid/widget/FrameLayout;

    .line 58
    .line 59
    invoke-direct {v8, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 60
    .line 61
    .line 62
    sget v9, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 63
    .line 64
    invoke-virtual {v8, v9, v9, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 65
    .line 66
    .line 67
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 68
    .line 69
    invoke-direct {v9, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 70
    .line 71
    .line 72
    const/high16 v10, 0x3f800000    # 1.0f

    .line 73
    .line 74
    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 75
    .line 76
    invoke-virtual {v4, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    .line 78
    .line 79
    new-instance v9, Lcom/mycompany/app/view/MyArrowView;

    .line 80
    .line 81
    invoke-direct {v9, v0}, Lcom/mycompany/app/view/MyArrowView;-><init>(Landroid/content/Context;)V

    .line 82
    .line 83
    .line 84
    const/4 v11, 0x4

    .line 85
    invoke-virtual {v9, v11}, Lcom/mycompany/app/view/MyArrowView;->b(I)V

    .line 86
    .line 87
    .line 88
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 89
    .line 90
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 91
    .line 92
    invoke-direct {v12, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 93
    .line 94
    .line 95
    const/4 v13, 0x1

    .line 96
    iput v13, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 97
    .line 98
    invoke-virtual {v8, v9, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    .line 100
    .line 101
    new-instance v9, Lcom/mycompany/app/view/MyTextView;

    .line 102
    .line 103
    invoke-direct {v9, v0}, Lcom/mycompany/app/view/MyTextView;-><init>(Landroid/content/Context;)V

    .line 104
    .line 105
    .line 106
    const/high16 v12, 0x41800000    # 16.0f

    .line 107
    .line 108
    invoke-virtual {v9, v13, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v9, v5}, Lcom/mycompany/app/view/MyTextView;->setTextColor(I)V

    .line 112
    .line 113
    .line 114
    sget v14, Lnet/kaki87/soul2/testing/R$string;->control_bright:I

    .line 115
    .line 116
    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setText(I)V

    .line 117
    .line 118
    .line 119
    const/high16 v14, -0x1000000

    .line 120
    .line 121
    invoke-virtual {v9, v14}, Lcom/mycompany/app/view/MyTextView;->setOutlineColor(I)V

    .line 122
    .line 123
    .line 124
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 125
    .line 126
    invoke-direct {v15, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 127
    .line 128
    .line 129
    iput v13, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 130
    .line 131
    sget v14, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 132
    .line 133
    iput v14, v15, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 134
    .line 135
    invoke-virtual {v8, v9, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    .line 137
    .line 138
    new-instance v8, Landroid/widget/FrameLayout;

    .line 139
    .line 140
    invoke-direct {v8, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 141
    .line 142
    .line 143
    sget v9, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 144
    .line 145
    invoke-virtual {v8, v9, v9, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 146
    .line 147
    .line 148
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 149
    .line 150
    invoke-direct {v9, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 151
    .line 152
    .line 153
    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 154
    .line 155
    invoke-virtual {v4, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    .line 157
    .line 158
    new-instance v4, Lcom/mycompany/app/view/MyArrowView;

    .line 159
    .line 160
    invoke-direct {v4, v0}, Lcom/mycompany/app/view/MyArrowView;-><init>(Landroid/content/Context;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v4, v11}, Lcom/mycompany/app/view/MyArrowView;->b(I)V

    .line 164
    .line 165
    .line 166
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 167
    .line 168
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 169
    .line 170
    invoke-direct {v7, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 171
    .line 172
    .line 173
    iput v13, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 174
    .line 175
    invoke-virtual {v8, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    .line 177
    .line 178
    new-instance v4, Lcom/mycompany/app/view/MyTextView;

    .line 179
    .line 180
    invoke-direct {v4, v0}, Lcom/mycompany/app/view/MyTextView;-><init>(Landroid/content/Context;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v4, v13, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v4, v5}, Lcom/mycompany/app/view/MyTextView;->setTextColor(I)V

    .line 187
    .line 188
    .line 189
    sget v7, Lnet/kaki87/soul2/testing/R$string;->control_volume:I

    .line 190
    .line 191
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 192
    .line 193
    .line 194
    const/high16 v7, -0x1000000

    .line 195
    .line 196
    invoke-virtual {v4, v7}, Lcom/mycompany/app/view/MyTextView;->setOutlineColor(I)V

    .line 197
    .line 198
    .line 199
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 200
    .line 201
    invoke-direct {v7, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 202
    .line 203
    .line 204
    iput v13, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 205
    .line 206
    sget v9, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 207
    .line 208
    iput v9, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 209
    .line 210
    invoke-virtual {v8, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    .line 212
    .line 213
    new-instance v4, Landroid/widget/FrameLayout;

    .line 214
    .line 215
    invoke-direct {v4, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 216
    .line 217
    .line 218
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 219
    .line 220
    invoke-direct {v7, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 221
    .line 222
    .line 223
    const/4 v8, 0x3

    .line 224
    invoke-virtual {v7, v8, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 225
    .line 226
    .line 227
    const/16 v1, 0xe

    .line 228
    .line 229
    invoke-virtual {v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 230
    .line 231
    .line 232
    sget v1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 233
    .line 234
    iput v1, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 235
    .line 236
    invoke-virtual {v3, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    .line 238
    .line 239
    new-instance v1, Landroid/widget/FrameLayout;

    .line 240
    .line 241
    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 242
    .line 243
    .line 244
    sget v3, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 245
    .line 246
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v4, v1, v6, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 250
    .line 251
    .line 252
    new-instance v3, Lcom/mycompany/app/view/MyArrowView;

    .line 253
    .line 254
    invoke-direct {v3, v0}, Lcom/mycompany/app/view/MyArrowView;-><init>(Landroid/content/Context;)V

    .line 255
    .line 256
    .line 257
    const/4 v4, 0x5

    .line 258
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyArrowView;->b(I)V

    .line 259
    .line 260
    .line 261
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 262
    .line 263
    sget v7, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 264
    .line 265
    invoke-direct {v4, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 266
    .line 267
    .line 268
    iput v13, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 269
    .line 270
    invoke-virtual {v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    .line 272
    .line 273
    new-instance v3, Lcom/mycompany/app/view/MyTextView;

    .line 274
    .line 275
    invoke-direct {v3, v0}, Lcom/mycompany/app/view/MyTextView;-><init>(Landroid/content/Context;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v3, v13, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v3, v5}, Lcom/mycompany/app/view/MyTextView;->setTextColor(I)V

    .line 282
    .line 283
    .line 284
    sget v0, Lnet/kaki87/soul2/testing/R$string;->control_seek:I

    .line 285
    .line 286
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 287
    .line 288
    .line 289
    const/high16 v7, -0x1000000

    .line 290
    .line 291
    invoke-virtual {v3, v7}, Lcom/mycompany/app/view/MyTextView;->setOutlineColor(I)V

    .line 292
    .line 293
    .line 294
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 295
    .line 296
    invoke-direct {v0, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 297
    .line 298
    .line 299
    iput v13, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 300
    .line 301
    sget v4, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 302
    .line 303
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 304
    .line 305
    invoke-virtual {v1, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    .line 307
    .line 308
    return-object v2
.end method

.method public static Z0(Landroid/content/Context;)Lcom/mycompany/app/view/MyFadeFrame;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    new-instance v1, Lcom/mycompany/app/view/MyFadeFrame;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyFadeFrame;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Landroid/widget/LinearLayout;

    .line 11
    .line 12
    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 16
    .line 17
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 18
    .line 19
    .line 20
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->round_guide_16:I

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 23
    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 27
    .line 28
    .line 29
    const/high16 v4, 0x43040000    # 132.0f

    .line 30
    .line 31
    invoke-static {p0, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    float-to-int v4, v4

    .line 36
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 37
    .line 38
    const/4 v6, -0x2

    .line 39
    invoke-direct {v5, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 40
    .line 41
    .line 42
    const/16 v4, 0x11

    .line 43
    .line 44
    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 45
    .line 46
    invoke-virtual {v1, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    .line 48
    .line 49
    new-instance v4, Landroid/view/View;

    .line 50
    .line 51
    invoke-direct {v4, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 52
    .line 53
    .line 54
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_pinch:I

    .line 55
    .line 56
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 57
    .line 58
    .line 59
    const/high16 v5, 0x42a80000    # 84.0f

    .line 60
    .line 61
    invoke-static {p0, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    float-to-int v5, v5

    .line 66
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 67
    .line 68
    invoke-direct {v7, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 69
    .line 70
    .line 71
    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 72
    .line 73
    invoke-virtual {v2, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    .line 75
    .line 76
    new-instance v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 77
    .line 78
    invoke-direct {v4, p0, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    .line 80
    .line 81
    const/high16 p0, 0x41800000    # 16.0f

    .line 82
    .line 83
    invoke-virtual {v4, v3, p0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 84
    .line 85
    .line 86
    const/4 p0, -0x1

    .line 87
    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    .line 89
    .line 90
    sget p0, Lnet/kaki87/soul2/testing/R$string;->guide_pinch:I

    .line 91
    .line 92
    invoke-static {v4, p0, v6, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->d(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/FrameLayout$LayoutParams;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    iput v3, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 97
    .line 98
    sget v0, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 99
    .line 100
    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 101
    .line 102
    invoke-virtual {v2, v4, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    .line 104
    .line 105
    return-object v1
.end method


# virtual methods
.method public final A(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->D3:Lcom/mycompany/app/video/VideoSubLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->u2:Landroid/media/MediaPlayer;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/16 v1, 0x8

    .line 15
    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->a1()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->L1:Landroid/view/TextureView;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/4 v1, 0x0

    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->D3:Lcom/mycompany/app/video/VideoSubLayout;

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Lcom/mycompany/app/video/VideoSubLayout;->setText(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_3
    iget v0, p0, Lcom/mycompany/app/video/VideoActivity;->L3:I

    .line 42
    .line 43
    int-to-long v2, p1

    .line 44
    invoke-virtual {p0, v0, v2, v3}, Lcom/mycompany/app/video/VideoActivity;->V0(IJ)I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    iput p1, p0, Lcom/mycompany/app/video/VideoActivity;->L3:I

    .line 49
    .line 50
    iget v0, p0, Lcom/mycompany/app/video/VideoActivity;->M3:I

    .line 51
    .line 52
    if-eq p1, v0, :cond_5

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Lcom/mycompany/app/video/VideoActivity;->W0(I)Lcom/mycompany/app/subtitle/SubtitleItem;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->D3:Lcom/mycompany/app/video/VideoSubLayout;

    .line 59
    .line 60
    if-eqz p1, :cond_4

    .line 61
    .line 62
    iget-object v1, p1, Lcom/mycompany/app/subtitle/SubtitleItem;->b:Ljava/lang/String;

    .line 63
    .line 64
    :cond_4
    invoke-virtual {v0, v1}, Lcom/mycompany/app/video/VideoSubLayout;->setText(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_5
    iget p1, p0, Lcom/mycompany/app/video/VideoActivity;->L3:I

    .line 68
    .line 69
    iput p1, p0, Lcom/mycompany/app/video/VideoActivity;->M3:I

    .line 70
    .line 71
    :cond_6
    :goto_0
    return-void
.end method

.method public final A1()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->u3:Z

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lcom/mycompany/app/video/VideoActivity;->v3:I

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Lcom/mycompany/app/video/VideoActivity;->G1(Z)V

    .line 8
    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->m2:Z

    .line 11
    .line 12
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->Q1:Lcom/mycompany/app/view/MyCoverView;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/high16 v2, -0x1000000

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0, v1}, Lcom/mycompany/app/video/VideoActivity;->L1(Z)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Lcom/mycompany/app/video/VideoActivity$34;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/mycompany/app/video/VideoActivity$34;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final B()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    sget-boolean v0, Lcom/mycompany/app/pref/PrefVideo;->p:Z

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    xor-int/2addr v0, v1

    .line 10
    sput-boolean v0, Lcom/mycompany/app/pref/PrefVideo;->p:Z

    .line 11
    .line 12
    iget-object v2, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 13
    .line 14
    const/16 v3, 0xd

    .line 15
    .line 16
    const-string v4, "mLoop"

    .line 17
    .line 18
    invoke-static {v3, v2, v4, v0}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/mycompany/app/video/VideoControl;->v()V

    .line 24
    .line 25
    .line 26
    sget-boolean v0, Lcom/mycompany/app/pref/PrefVideo;->p:Z

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 31
    .line 32
    sget v2, Lnet/kaki87/soul2/testing/R$string;->repeat_on:I

    .line 33
    .line 34
    invoke-static {v0, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 39
    .line 40
    sget v2, Lnet/kaki87/soul2/testing/R$string;->repeat_off:I

    .line 41
    .line 42
    invoke-static {v0, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 43
    .line 44
    .line 45
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->n3:Lcom/mycompany/app/view/MyWebSafe;

    .line 46
    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    iget-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->B3:Z

    .line 51
    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    iput-boolean v1, p0, Lcom/mycompany/app/video/VideoActivity;->B3:Z

    .line 56
    .line 57
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 58
    .line 59
    if-nez v0, :cond_4

    .line 60
    .line 61
    :goto_1
    return-void

    .line 62
    :cond_4
    new-instance v1, Lcom/mycompany/app/video/VideoActivity$64;

    .line 63
    .line 64
    invoke-direct {v1, p0}, Lcom/mycompany/app/video/VideoActivity$64;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 65
    .line 66
    .line 67
    const-wide/16 v2, 0x64

    .line 68
    .line 69
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final B1()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->J1()V

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lcom/mycompany/app/pref/PrefSub;->j:Z

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->y1()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->f1()V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->z3:Z

    .line 20
    .line 21
    sput-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 22
    .line 23
    new-instance v1, Lcom/mycompany/app/dialog/DialogConfirm;

    .line 24
    .line 25
    sget v2, Lnet/kaki87/soul2/testing/R$string;->subtitle:I

    .line 26
    .line 27
    sget v3, Lnet/kaki87/soul2/testing/R$string;->sub_guide:I

    .line 28
    .line 29
    new-instance v4, Lcom/mycompany/app/video/VideoActivity$56;

    .line 30
    .line 31
    invoke-direct {v4, p0}, Lcom/mycompany/app/video/VideoActivity$56;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {v1, p0, v2, v3, v4}, Lcom/mycompany/app/dialog/DialogConfirm;-><init>(Landroid/app/Activity;IILcom/mycompany/app/dialog/DialogConfirm$DialogConfListener;)V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->b3:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 38
    .line 39
    new-instance v2, Lcom/mycompany/app/video/VideoActivity$57;

    .line 40
    .line 41
    invoke-direct {v2, p0}, Lcom/mycompany/app/video/VideoActivity$57;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->b3:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 48
    .line 49
    iput-boolean v0, v1, Lcom/mycompany/app/view/MyDialogBottom;->E:Z

    .line 50
    .line 51
    :cond_1
    :goto_0
    return-void
.end method

.method public final C1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->n3:Lcom/mycompany/app/view/MyWebSafe;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->l3:Lcom/mycompany/app/video/VideoAudio;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/mycompany/app/video/VideoAudio;->c()V

    .line 11
    .line 12
    .line 13
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->v2:Lcom/mycompany/app/video/VideoActivity$PlayTask;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    iput-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 19
    .line 20
    :cond_2
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->v2:Lcom/mycompany/app/video/VideoActivity$PlayTask;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->u2:Landroid/media/MediaPlayer;

    .line 24
    .line 25
    iput-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->T3:Landroid/media/MediaPlayer;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->u2:Landroid/media/MediaPlayer;

    .line 28
    .line 29
    if-nez v1, :cond_3

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->B2:Z

    .line 33
    .line 34
    return-void

    .line 35
    :cond_3
    new-instance v0, Lcom/mycompany/app/video/VideoActivity$27;

    .line 36
    .line 37
    invoke-direct {v0, p0}, Lcom/mycompany/app/video/VideoActivity$27;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final D()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->D1()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Lcom/mycompany/app/video/VideoActivity$70;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/mycompany/app/video/VideoActivity$70;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final D1()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->l3:Lcom/mycompany/app/video/VideoAudio;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/video/VideoAudio;->c()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->d2:Landroid/net/Uri;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    return v1

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->u2:Landroid/media/MediaPlayer;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0, v2}, Lcom/mycompany/app/video/VideoActivity;->G1(Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1}, Lcom/mycompany/app/video/VideoActivity;->m1(Z)V

    .line 23
    .line 24
    .line 25
    return v1

    .line 26
    :cond_2
    iput-boolean v1, p0, Lcom/mycompany/app/video/VideoActivity;->w2:Z

    .line 27
    .line 28
    iput-boolean v1, p0, Lcom/mycompany/app/video/VideoActivity;->x2:Z

    .line 29
    .line 30
    iput-boolean v1, p0, Lcom/mycompany/app/video/VideoActivity;->z2:Z

    .line 31
    .line 32
    iput-boolean v1, p0, Lcom/mycompany/app/video/VideoActivity;->C2:Z

    .line 33
    .line 34
    const/4 v0, -0x1

    .line 35
    iput v0, p0, Lcom/mycompany/app/video/VideoActivity;->E2:I

    .line 36
    .line 37
    iget v0, p0, Lcom/mycompany/app/video/VideoActivity;->g3:F

    .line 38
    .line 39
    const/high16 v3, 0x3f800000    # 1.0f

    .line 40
    .line 41
    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    iput-boolean v2, p0, Lcom/mycompany/app/video/VideoActivity;->y2:Z

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    iput-boolean v1, p0, Lcom/mycompany/app/video/VideoActivity;->y2:Z

    .line 51
    .line 52
    :goto_0
    iget-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->T2:Z

    .line 53
    .line 54
    if-nez v0, :cond_4

    .line 55
    .line 56
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/mycompany/app/video/VideoControl;->Q:Lcom/mycompany/app/view/MyAreaView;

    .line 59
    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyAreaView;->setSkipDraw(Z)V

    .line 63
    .line 64
    .line 65
    :cond_4
    invoke-virtual {p0, v2}, Lcom/mycompany/app/video/VideoActivity;->I1(Z)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v1}, Lcom/mycompany/app/video/VideoActivity;->G1(Z)V

    .line 69
    .line 70
    .line 71
    iget-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->k2:Z

    .line 72
    .line 73
    if-eqz v0, :cond_5

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->f()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    const v3, 0x493e0

    .line 80
    .line 81
    .line 82
    if-le v0, v3, :cond_5

    .line 83
    .line 84
    invoke-virtual {p0, v1}, Lcom/mycompany/app/video/VideoActivity;->L1(Z)V

    .line 85
    .line 86
    .line 87
    :cond_5
    return v2
.end method

.method public final E(Z)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->y1()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->i1()V

    .line 12
    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->z3:Z

    .line 15
    .line 16
    sput-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 17
    .line 18
    new-instance p1, Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    new-instance v2, Lcom/mycompany/app/video/VideoActivity$44;

    .line 25
    .line 26
    invoke-direct {v2, p0}, Lcom/mycompany/app/video/VideoActivity$44;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p1, p0, v1, v0, v2}, Lcom/mycompany/app/dialog/DialogSeekBright;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/Window;ILcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->W2:Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 33
    .line 34
    new-instance v1, Lcom/mycompany/app/video/VideoActivity$45;

    .line 35
    .line 36
    invoke-direct {v1, p0}, Lcom/mycompany/app/video/VideoActivity$45;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->W2:Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 43
    .line 44
    iput-boolean v0, p1, Lcom/mycompany/app/view/MyDialogBottom;->E:Z

    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->y1()Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    :goto_0
    return-void

    .line 54
    :cond_2
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->h1()V

    .line 55
    .line 56
    .line 57
    iput-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->z3:Z

    .line 58
    .line 59
    sput-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 60
    .line 61
    new-instance p1, Lcom/mycompany/app/dialog/DialogSeekAudio;

    .line 62
    .line 63
    new-instance v1, Lcom/mycompany/app/video/VideoActivity$48;

    .line 64
    .line 65
    invoke-direct {v1, p0}, Lcom/mycompany/app/video/VideoActivity$48;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 66
    .line 67
    .line 68
    invoke-direct {p1, p0, v1}, Lcom/mycompany/app/dialog/DialogSeekAudio;-><init>(Landroid/app/Activity;Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;)V

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->X2:Lcom/mycompany/app/dialog/DialogSeekAudio;

    .line 72
    .line 73
    new-instance v1, Lcom/mycompany/app/video/VideoActivity$49;

    .line 74
    .line 75
    invoke-direct {v1, p0}, Lcom/mycompany/app/video/VideoActivity$49;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->X2:Lcom/mycompany/app/dialog/DialogSeekAudio;

    .line 82
    .line 83
    iput-boolean v0, p1, Lcom/mycompany/app/view/MyDialogBottom;->E:Z

    .line 84
    .line 85
    return-void
.end method

.method public final E1(Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 2
    .line 3
    if-eqz v0, :cond_12

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->T1:Lcom/mycompany/app/zoom/ZoomVideoAttacher;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_9

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->u2:Landroid/media/MediaPlayer;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput v0, p0, Lcom/mycompany/app/video/VideoActivity;->Q2:I

    .line 21
    .line 22
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->u2:Landroid/media/MediaPlayer;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iput v0, p0, Lcom/mycompany/app/video/VideoActivity;->R2:I

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iput v1, p0, Lcom/mycompany/app/video/VideoActivity;->Q2:I

    .line 32
    .line 33
    iput v1, p0, Lcom/mycompany/app/video/VideoActivity;->R2:I

    .line 34
    .line 35
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    iget v0, p0, Lcom/mycompany/app/video/VideoActivity;->O2:I

    .line 48
    .line 49
    if-ne v0, v3, :cond_2

    .line 50
    .line 51
    iget v0, p0, Lcom/mycompany/app/video/VideoActivity;->P2:I

    .line 52
    .line 53
    if-ne v0, v4, :cond_2

    .line 54
    .line 55
    iget v0, p0, Lcom/mycompany/app/video/VideoActivity;->K2:I

    .line 56
    .line 57
    sget v2, Lcom/mycompany/app/pref/PrefVideo;->w:I

    .line 58
    .line 59
    if-eq v0, v2, :cond_3

    .line 60
    .line 61
    :cond_2
    iput v3, p0, Lcom/mycompany/app/video/VideoActivity;->O2:I

    .line 62
    .line 63
    iput v4, p0, Lcom/mycompany/app/video/VideoActivity;->P2:I

    .line 64
    .line 65
    sget v0, Lcom/mycompany/app/pref/PrefVideo;->w:I

    .line 66
    .line 67
    iput v0, p0, Lcom/mycompany/app/video/VideoActivity;->K2:I

    .line 68
    .line 69
    iput-boolean v1, p0, Lcom/mycompany/app/video/VideoActivity;->T2:Z

    .line 70
    .line 71
    :cond_3
    iget-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->T2:Z

    .line 72
    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->T1:Lcom/mycompany/app/zoom/ZoomVideoAttacher;

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->d()V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->u2:Landroid/media/MediaPlayer;

    .line 82
    .line 83
    if-eqz v0, :cond_11

    .line 84
    .line 85
    iget v0, p0, Lcom/mycompany/app/video/VideoActivity;->Q2:I

    .line 86
    .line 87
    if-eqz v0, :cond_11

    .line 88
    .line 89
    iget v2, p0, Lcom/mycompany/app/video/VideoActivity;->R2:I

    .line 90
    .line 91
    if-nez v2, :cond_5

    .line 92
    .line 93
    goto/16 :goto_8

    .line 94
    .line 95
    :cond_5
    const/4 v5, 0x1

    .line 96
    iput-boolean v5, p0, Lcom/mycompany/app/video/VideoActivity;->T2:Z

    .line 97
    .line 98
    iget v6, p0, Lcom/mycompany/app/video/VideoActivity;->N2:I

    .line 99
    .line 100
    rem-int/lit16 v6, v6, 0xb4

    .line 101
    .line 102
    if-eqz v6, :cond_6

    .line 103
    .line 104
    iget v6, p0, Lcom/mycompany/app/video/VideoActivity;->L2:I

    .line 105
    .line 106
    if-ne v6, v0, :cond_6

    .line 107
    .line 108
    iget v6, p0, Lcom/mycompany/app/video/VideoActivity;->M2:I

    .line 109
    .line 110
    if-ne v6, v2, :cond_6

    .line 111
    .line 112
    move v6, v5

    .line 113
    goto :goto_1

    .line 114
    :cond_6
    move v6, v1

    .line 115
    :goto_1
    iput-boolean v6, p0, Lcom/mycompany/app/video/VideoActivity;->S2:Z

    .line 116
    .line 117
    sget v7, Lcom/mycompany/app/pref/PrefVideo;->w:I

    .line 118
    .line 119
    if-ne v7, v5, :cond_7

    .line 120
    .line 121
    move v5, v3

    .line 122
    :goto_2
    move v6, v4

    .line 123
    goto/16 :goto_7

    .line 124
    .line 125
    :cond_7
    const/4 v5, 0x2

    .line 126
    if-ne v7, v5, :cond_b

    .line 127
    .line 128
    int-to-float v2, v2

    .line 129
    int-to-float v0, v0

    .line 130
    div-float/2addr v2, v0

    .line 131
    if-eqz v6, :cond_a

    .line 132
    .line 133
    int-to-float v0, v4

    .line 134
    mul-float/2addr v0, v2

    .line 135
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-ge v0, v3, :cond_9

    .line 140
    .line 141
    int-to-float v0, v3

    .line 142
    div-float/2addr v0, v2

    .line 143
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    :cond_8
    move v2, v0

    .line 148
    move v0, v3

    .line 149
    goto :goto_4

    .line 150
    :cond_9
    :goto_3
    move v2, v4

    .line 151
    goto :goto_4

    .line 152
    :cond_a
    int-to-float v0, v3

    .line 153
    mul-float/2addr v0, v2

    .line 154
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-ge v0, v4, :cond_8

    .line 159
    .line 160
    int-to-float v0, v4

    .line 161
    div-float/2addr v0, v2

    .line 162
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    goto :goto_3

    .line 167
    :goto_4
    move v5, v0

    .line 168
    move v6, v2

    .line 169
    goto :goto_7

    .line 170
    :cond_b
    int-to-float v2, v2

    .line 171
    int-to-float v0, v0

    .line 172
    div-float/2addr v2, v0

    .line 173
    if-eqz v6, :cond_d

    .line 174
    .line 175
    int-to-float v0, v4

    .line 176
    mul-float/2addr v0, v2

    .line 177
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-le v0, v3, :cond_c

    .line 182
    .line 183
    int-to-float v0, v3

    .line 184
    div-float/2addr v0, v2

    .line 185
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    move v6, v2

    .line 190
    :goto_5
    move v5, v3

    .line 191
    goto :goto_7

    .line 192
    :cond_c
    :goto_6
    move v5, v0

    .line 193
    goto :goto_2

    .line 194
    :cond_d
    int-to-float v0, v3

    .line 195
    mul-float/2addr v0, v2

    .line 196
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-le v0, v4, :cond_e

    .line 201
    .line 202
    int-to-float v0, v4

    .line 203
    div-float/2addr v0, v2

    .line 204
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    goto :goto_6

    .line 209
    :cond_e
    move v6, v0

    .line 210
    goto :goto_5

    .line 211
    :goto_7
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 212
    .line 213
    if-eqz v0, :cond_f

    .line 214
    .line 215
    iget-object v2, v0, Lcom/mycompany/app/video/VideoControl;->Q:Lcom/mycompany/app/view/MyAreaView;

    .line 216
    .line 217
    if-eqz v2, :cond_f

    .line 218
    .line 219
    iget v7, v0, Lcom/mycompany/app/video/VideoControl;->U:I

    .line 220
    .line 221
    iget-object v0, v0, Lcom/mycompany/app/video/VideoControl;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 222
    .line 223
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 224
    .line 225
    .line 226
    move-result v8

    .line 227
    const/4 v9, 0x0

    .line 228
    invoke-virtual/range {v2 .. v9}, Lcom/mycompany/app/view/MyAreaView;->d(IIIIIIZ)Z

    .line 229
    .line 230
    .line 231
    :cond_f
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->T1:Lcom/mycompany/app/zoom/ZoomVideoAttacher;

    .line 232
    .line 233
    iget-boolean v2, p0, Lcom/mycompany/app/video/VideoActivity;->S2:Z

    .line 234
    .line 235
    if-eqz v2, :cond_10

    .line 236
    .line 237
    iget v1, p0, Lcom/mycompany/app/video/VideoActivity;->N2:I

    .line 238
    .line 239
    :cond_10
    invoke-virtual {v0, v5, v6, v1, p1}, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->k(IIIZ)V

    .line 240
    .line 241
    .line 242
    return-void

    .line 243
    :cond_11
    :goto_8
    iput-boolean v1, p0, Lcom/mycompany/app/video/VideoActivity;->T2:Z

    .line 244
    .line 245
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->T1:Lcom/mycompany/app/zoom/ZoomVideoAttacher;

    .line 246
    .line 247
    invoke-virtual {v0, v1, v1, v1, p1}, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->k(IIIZ)V

    .line 248
    .line 249
    .line 250
    :cond_12
    :goto_9
    return-void
.end method

.method public final F1(Ljava/lang/String;IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->l3:Lcom/mycompany/app/video/VideoAudio;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/mycompany/app/video/VideoAudio;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 8
    .line 9
    new-instance v2, Lcom/mycompany/app/video/VideoActivity$72;

    .line 10
    .line 11
    invoke-direct {v2, p0}, Lcom/mycompany/app/video/VideoActivity$72;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v1, v0, Lcom/mycompany/app/video/VideoAudio;->a:Landroid/content/Context;

    .line 18
    .line 19
    iput-object v2, v0, Lcom/mycompany/app/video/VideoAudio;->b:Lcom/mycompany/app/video/VideoAudio$AudioListener;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->l3:Lcom/mycompany/app/video/VideoAudio;

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->l3:Lcom/mycompany/app/video/VideoAudio;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->J2:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v1, p2, p1, p3}, Lcom/mycompany/app/video/VideoAudio;->d(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final G()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->z2:Z

    .line 2
    .line 3
    return v0
.end method

.method public final G1(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final H()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->i3:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 5
    .line 6
    sget v1, Lcom/mycompany/app/pref/PrefSecret;->D:I

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->i2(Landroid/content/Context;I)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "EXTRA_PASS"

    .line 13
    .line 14
    const/4 v2, 0x3

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    const-string v1, "EXTRA_TYPE"

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final H1(Z)V
    .locals 10

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_4

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    goto/16 :goto_4

    .line 14
    .line 15
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->g()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    new-instance v2, Landroid/content/Intent;

    .line 24
    .line 25
    const-string v3, "net.kaki87.soul2.testing.ACTION_VIDEO_FRWD"

    .line 26
    .line 27
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    iget-object v3, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    const/high16 v5, 0xc000000

    .line 37
    .line 38
    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    new-instance v3, Landroid/content/Intent;

    .line 43
    .line 44
    const-string v4, "net.kaki87.soul2.testing.ACTION_VIDEO_PLAY"

    .line 45
    .line 46
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    iget-object v4, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 53
    .line 54
    const/4 v6, 0x1

    .line 55
    invoke-static {v4, v6, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    new-instance v4, Landroid/content/Intent;

    .line 60
    .line 61
    const-string v6, "net.kaki87.soul2.testing.ACTION_VIDEO_FFWD"

    .line 62
    .line 63
    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 70
    .line 71
    const/4 v6, 0x2

    .line 72
    invoke-static {v1, v6, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    iget-boolean v4, p0, Lcom/mycompany/app/video/VideoActivity;->z2:Z

    .line 77
    .line 78
    if-eqz v4, :cond_2

    .line 79
    .line 80
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_error_white_24:I

    .line 81
    .line 82
    const-string v4, "error"

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    if-nez v0, :cond_3

    .line 86
    .line 87
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->baseline_play_arrow_white_24:I

    .line 88
    .line 89
    const-string v4, "play"

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->baseline_pause_white_24:I

    .line 93
    .line 94
    const-string v4, "pause"

    .line 95
    .line 96
    :goto_0
    iget-boolean v5, p0, Lcom/mycompany/app/video/VideoActivity;->D1:Z

    .line 97
    .line 98
    if-eqz v5, :cond_4

    .line 99
    .line 100
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->baseline_fast_forward_white_24:I

    .line 101
    .line 102
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->baseline_fast_rewind_white_24:I

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_4
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->baseline_fast_rewind_white_24:I

    .line 106
    .line 107
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->baseline_fast_forward_white_24:I

    .line 108
    .line 109
    :goto_1
    iget-object v7, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 110
    .line 111
    invoke-static {v7, v5}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    iget-object v7, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 116
    .line 117
    invoke-static {v7, v0}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    iget-object v7, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 122
    .line 123
    invoke-static {v7, v6}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    new-instance v7, Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .line 131
    .line 132
    new-instance v8, Landroid/app/RemoteAction;

    .line 133
    .line 134
    const-string v9, "frwd"

    .line 135
    .line 136
    invoke-direct {v8, v5, v9, v9, v2}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    new-instance v2, Landroid/app/RemoteAction;

    .line 143
    .line 144
    invoke-direct {v2, v0, v4, v4, v3}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    new-instance v0, Landroid/app/RemoteAction;

    .line 151
    .line 152
    const-string v2, "ffwd"

    .line 153
    .line 154
    invoke-direct {v0, v6, v2, v2, v1}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    new-instance v0, Landroid/app/PictureInPictureParams$Builder;

    .line 161
    .line 162
    invoke-direct {v0}, Landroid/app/PictureInPictureParams$Builder;-><init>()V

    .line 163
    .line 164
    .line 165
    iput-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->b2:Landroid/app/PictureInPictureParams$Builder;

    .line 166
    .line 167
    invoke-virtual {v0, v7}, Landroid/app/PictureInPictureParams$Builder;->setActions(Ljava/util/List;)Landroid/app/PictureInPictureParams$Builder;

    .line 168
    .line 169
    .line 170
    iget-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->s3:Z

    .line 171
    .line 172
    const/16 v1, 0x500

    .line 173
    .line 174
    const/16 v2, 0x2d0

    .line 175
    .line 176
    if-eqz v0, :cond_6

    .line 177
    .line 178
    iget v0, p0, Lcom/mycompany/app/video/VideoActivity;->x3:I

    .line 179
    .line 180
    if-lez v0, :cond_5

    .line 181
    .line 182
    iget v3, p0, Lcom/mycompany/app/video/VideoActivity;->y3:I

    .line 183
    .line 184
    if-lez v3, :cond_5

    .line 185
    .line 186
    :goto_2
    move v1, v0

    .line 187
    move v2, v3

    .line 188
    goto :goto_3

    .line 189
    :cond_5
    iput v1, p0, Lcom/mycompany/app/video/VideoActivity;->x3:I

    .line 190
    .line 191
    iput v2, p0, Lcom/mycompany/app/video/VideoActivity;->y3:I

    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_6
    iget v0, p0, Lcom/mycompany/app/video/VideoActivity;->Q2:I

    .line 195
    .line 196
    if-lez v0, :cond_7

    .line 197
    .line 198
    iget v3, p0, Lcom/mycompany/app/video/VideoActivity;->R2:I

    .line 199
    .line 200
    if-lez v3, :cond_7

    .line 201
    .line 202
    goto :goto_2

    .line 203
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->b2:Landroid/app/PictureInPictureParams$Builder;

    .line 204
    .line 205
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e3(II)Landroid/util/Rational;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-virtual {v0, v1}, Landroid/app/PictureInPictureParams$Builder;->setAspectRatio(Landroid/util/Rational;)Landroid/app/PictureInPictureParams$Builder;

    .line 210
    .line 211
    .line 212
    if-eqz p1, :cond_8

    .line 213
    .line 214
    :try_start_0
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->b2:Landroid/app/PictureInPictureParams$Builder;

    .line 215
    .line 216
    invoke-virtual {p1}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    invoke-virtual {p0, p1}, Landroid/app/Activity;->enterPictureInPictureMode(Landroid/app/PictureInPictureParams;)Z

    .line 221
    .line 222
    .line 223
    return-void

    .line 224
    :cond_8
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->b2:Landroid/app/PictureInPictureParams$Builder;

    .line 225
    .line 226
    invoke-virtual {p1}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setPictureInPictureParams(Landroid/app/PictureInPictureParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    .line 232
    .line 233
    :catch_0
    :goto_4
    return-void
.end method

.method public final I1(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->L1:Landroid/view/TextureView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getKeepScreenOn()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eq v0, p1, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->L1:Landroid/view/TextureView;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 15
    .line 16
    .line 17
    :cond_1
    :goto_0
    return-void
.end method

.method public final J()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->i3:Z

    .line 3
    .line 4
    new-instance v0, Landroid/content/Intent;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 7
    .line 8
    const-class v2, Lcom/mycompany/app/setting/SettingVideo;

    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final J1()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->D3:Lcom/mycompany/app/video/VideoSubLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_4

    .line 6
    .line 7
    :cond_0
    sget-boolean v0, Lcom/mycompany/app/pref/PrefSub;->k:Z

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->a1()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->D3:Lcom/mycompany/app/video/VideoSubLayout;

    .line 22
    .line 23
    invoke-virtual {v0, v3}, Lcom/mycompany/app/video/VideoSubLayout;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    move v0, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->D3:Lcom/mycompany/app/video/VideoSubLayout;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/mycompany/app/video/VideoSubLayout;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    move v0, v3

    .line 34
    :goto_0
    iget-object v4, p0, Lcom/mycompany/app/video/VideoActivity;->D3:Lcom/mycompany/app/video/VideoSubLayout;

    .line 35
    .line 36
    sget-boolean v5, Lcom/mycompany/app/pref/PrefSub;->t:Z

    .line 37
    .line 38
    iget-object v6, v4, Lcom/mycompany/app/video/VideoSubLayout;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 39
    .line 40
    if-nez v6, :cond_2

    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    if-nez v6, :cond_3

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_3
    move v2, v3

    .line 51
    :goto_1
    if-ne v5, v2, :cond_4

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_4
    if-nez v2, :cond_6

    .line 55
    .line 56
    iget-object v2, v4, Lcom/mycompany/app/video/VideoSubLayout;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 57
    .line 58
    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    if-eqz v6, :cond_5

    .line 67
    .line 68
    iget-object v2, v4, Lcom/mycompany/app/video/VideoSubLayout;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 69
    .line 70
    const/4 v6, 0x0

    .line 71
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_5
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v4, v2, v3}, Lcom/mycompany/app/video/VideoSubLayout;->e(Ljava/lang/String;Z)V

    .line 80
    .line 81
    .line 82
    :cond_6
    :goto_2
    iget-object v2, v4, Lcom/mycompany/app/video/VideoSubLayout;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 83
    .line 84
    if-eqz v5, :cond_7

    .line 85
    .line 86
    move v1, v3

    .line 87
    :cond_7
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    .line 89
    .line 90
    :goto_3
    iget-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->D3:Lcom/mycompany/app/video/VideoSubLayout;

    .line 91
    .line 92
    sget v2, Lcom/mycompany/app/pref/PrefSub;->n:I

    .line 93
    .line 94
    int-to-float v2, v2

    .line 95
    sget v4, Lcom/mycompany/app/pref/PrefSub;->o:I

    .line 96
    .line 97
    sget v5, Lcom/mycompany/app/pref/PrefSub;->q:I

    .line 98
    .line 99
    invoke-virtual {v1, v2, v4, v5}, Lcom/mycompany/app/video/VideoSubLayout;->h(FII)V

    .line 100
    .line 101
    .line 102
    const/4 v1, -0x1

    .line 103
    iput v1, p0, Lcom/mycompany/app/video/VideoActivity;->M3:I

    .line 104
    .line 105
    iget-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->N3:Lcom/mycompany/app/video/VideoActivity$EventHandler;

    .line 106
    .line 107
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 108
    .line 109
    .line 110
    if-eqz v0, :cond_8

    .line 111
    .line 112
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->N3:Lcom/mycompany/app/video/VideoActivity$EventHandler;

    .line 113
    .line 114
    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 115
    .line 116
    .line 117
    :cond_8
    :goto_4
    return-void
.end method

.method public final K(Landroid/graphics/RectF;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/video/VideoControl;->Q:Lcom/mycompany/app/view/MyAreaView;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget v2, v0, Lcom/mycompany/app/video/VideoControl;->U:I

    .line 11
    .line 12
    iget-object v3, v0, Lcom/mycompany/app/video/VideoControl;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 13
    .line 14
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-virtual {v1, p1, v2, v3}, Lcom/mycompany/app/view/MyAreaView;->f(Landroid/graphics/RectF;II)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/mycompany/app/video/VideoControl;->p()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const/4 v1, 0x4

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    iget-object p1, v0, Lcom/mycompany/app/video/VideoControl;->Q:Lcom/mycompany/app/view/MyAreaView;

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object p1, v0, Lcom/mycompany/app/video/VideoControl;->Q:Lcom/mycompany/app/view/MyAreaView;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyAreaView;->a()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    :goto_0
    iget-object p1, v0, Lcom/mycompany/app/video/VideoControl;->Q:Lcom/mycompany/app/view/MyAreaView;

    .line 47
    .line 48
    iget-boolean v1, p1, Lcom/mycompany/app/view/MyAreaView;->A:Z

    .line 49
    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    new-instance v1, Lcom/mycompany/app/video/VideoControl$25;

    .line 53
    .line 54
    invoke-direct {v1, v0}, Lcom/mycompany/app/video/VideoControl$25;-><init>(Lcom/mycompany/app/video/VideoControl;)V

    .line 55
    .line 56
    .line 57
    const-wide/16 v2, 0x64

    .line 58
    .line 59
    invoke-virtual {p1, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 60
    .line 61
    .line 62
    :cond_3
    :goto_1
    return-void
.end method

.method public final K1()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/mycompany/app/video/VideoActivity;->y1()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/video/VideoActivity;->d1()V

    .line 11
    .line 12
    .line 13
    iget-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->e2:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    sget-object v1, Lcom/mycompany/app/pref/PrefAlbum;->H:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v7, 0x1

    .line 29
    if-nez v1, :cond_3

    .line 30
    .line 31
    sget-object v1, Lcom/mycompany/app/pref/PrefAlbum;->I:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_3

    .line 38
    .line 39
    sget-object v1, Lcom/mycompany/app/pref/PrefAlbum;->H:Ljava/lang/String;

    .line 40
    .line 41
    sget-object v2, Lcom/mycompany/app/pref/PrefAlbum;->I:Ljava/lang/String;

    .line 42
    .line 43
    iget-object v3, v0, Lcom/mycompany/app/video/VideoActivity;->e2:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v4, v0, Lcom/mycompany/app/video/VideoActivity;->o2:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v5, v0, Lcom/mycompany/app/video/VideoActivity;->r2:Ljava/lang/String;

    .line 48
    .line 49
    const-string v6, "video/*"

    .line 50
    .line 51
    invoke-static/range {v0 .. v6}, Lcom/mycompany/app/main/MainUtil;->G4(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    iput-boolean v1, v0, Lcom/mycompany/app/video/VideoActivity;->i3:Z

    .line 56
    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    invoke-virtual {v0, v7}, Lcom/mycompany/app/video/VideoActivity;->L1(Z)V

    .line 60
    .line 61
    .line 62
    :cond_2
    :goto_0
    return-void

    .line 63
    :cond_3
    iput-boolean v7, v0, Lcom/mycompany/app/video/VideoActivity;->z3:Z

    .line 64
    .line 65
    sput-boolean v7, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 66
    .line 67
    iget-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->n2:Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-nez v1, :cond_4

    .line 74
    .line 75
    iget-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->n2:Ljava/lang/String;

    .line 76
    .line 77
    :goto_1
    move-object v2, v1

    .line 78
    goto :goto_2

    .line 79
    :cond_4
    iget-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->e2:Ljava/lang/String;

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :goto_2
    new-instance v1, Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 83
    .line 84
    iget-object v3, v0, Lcom/mycompany/app/video/VideoActivity;->o2:Ljava/lang/String;

    .line 85
    .line 86
    iget-object v4, v0, Lcom/mycompany/app/video/VideoActivity;->r2:Ljava/lang/String;

    .line 87
    .line 88
    new-instance v5, Lcom/mycompany/app/video/VideoActivity$52;

    .line 89
    .line 90
    invoke-direct {v5, v0}, Lcom/mycompany/app/video/VideoActivity$52;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 91
    .line 92
    .line 93
    move-object/from16 v16, v5

    .line 94
    .line 95
    const/4 v5, 0x0

    .line 96
    const-string v6, "video/*"

    .line 97
    .line 98
    move v9, v7

    .line 99
    const-wide/16 v7, 0x0

    .line 100
    .line 101
    move v10, v9

    .line 102
    const/4 v9, 0x5

    .line 103
    move v11, v10

    .line 104
    const/4 v10, 0x0

    .line 105
    move v12, v11

    .line 106
    const/4 v11, 0x0

    .line 107
    move v13, v12

    .line 108
    const/4 v12, 0x0

    .line 109
    move v14, v13

    .line 110
    const/4 v13, 0x0

    .line 111
    move v15, v14

    .line 112
    const/4 v14, 0x0

    .line 113
    move/from16 v17, v15

    .line 114
    .line 115
    const/4 v15, 0x0

    .line 116
    move-object/from16 v18, v1

    .line 117
    .line 118
    move-object v1, v0

    .line 119
    move-object/from16 v0, v18

    .line 120
    .line 121
    invoke-direct/range {v0 .. v16}, Lcom/mycompany/app/dialog/DialogDownUrl;-><init>(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/util/List;ILjava/util/List;ZILcom/mycompany/app/dialog/DialogDownUrl$DownUrlListener;)V

    .line 122
    .line 123
    .line 124
    move-object/from16 v18, v1

    .line 125
    .line 126
    move-object v1, v0

    .line 127
    move-object/from16 v0, v18

    .line 128
    .line 129
    iput-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->Z2:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 130
    .line 131
    new-instance v2, Lcom/mycompany/app/video/VideoActivity$53;

    .line 132
    .line 133
    invoke-direct {v2, v0}, Lcom/mycompany/app/video/VideoActivity$53;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 137
    .line 138
    .line 139
    iget-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->Z2:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 140
    .line 141
    const/4 v15, 0x1

    .line 142
    iput-boolean v15, v1, Lcom/mycompany/app/view/MyDialogBottom;->E:Z

    .line 143
    .line 144
    return-void
.end method

.method public final L()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->r1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final L1(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->Q1:Lcom/mycompany/app/view/MyCoverView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyCoverView;->setBlockTouch(Z)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->Q1:Lcom/mycompany/app/view/MyCoverView;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyCoverView;->l()V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->Q1:Lcom/mycompany/app/view/MyCoverView;

    .line 18
    .line 19
    new-instance v0, Lcom/mycompany/app/video/VideoActivity$59;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/mycompany/app/video/VideoActivity$59;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 22
    .line 23
    .line 24
    const-wide/16 v1, 0x5dc

    .line 25
    .line 26
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    iput-wide v2, p0, Lcom/mycompany/app/video/VideoActivity;->j3:J

    .line 35
    .line 36
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->Q1:Lcom/mycompany/app/view/MyCoverView;

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyCoverView;->setBlockTouch(Z)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->Q1:Lcom/mycompany/app/view/MyCoverView;

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyCoverView;->m(Z)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->Q1:Lcom/mycompany/app/view/MyCoverView;

    .line 48
    .line 49
    new-instance v0, Lcom/mycompany/app/video/VideoActivity$60;

    .line 50
    .line 51
    invoke-direct {v0, p0}, Lcom/mycompany/app/video/VideoActivity$60;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 52
    .line 53
    .line 54
    const-wide/16 v1, 0x1388

    .line 55
    .line 56
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final M1(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->u2:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/mycompany/app/video/VideoActivity;->w2:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->b2:Landroid/app/PictureInPictureParams$Builder;

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/mycompany/app/video/VideoActivity;->F1:Z

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    const/4 v1, 0x0

    .line 21
    if-eqz p1, :cond_3

    .line 22
    .line 23
    iget-boolean p1, p0, Lcom/mycompany/app/video/VideoActivity;->C2:Z

    .line 24
    .line 25
    if-nez p1, :cond_2

    .line 26
    .line 27
    const/4 p1, -0x1

    .line 28
    iput p1, p0, Lcom/mycompany/app/video/VideoActivity;->E2:I

    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lcom/mycompany/app/video/VideoActivity;->h3:Z

    .line 32
    .line 33
    new-instance v0, Landroid/content/Intent;

    .line 34
    .line 35
    const-string v2, "net.kaki87.soul2.testing.ACTION_MUSIC_PAUSE"

    .line 36
    .line 37
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->u2:Landroid/media/MediaPlayer;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_2

    .line 57
    .line 58
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->u2:Landroid/media/MediaPlayer;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p1}, Lcom/mycompany/app/video/VideoActivity;->I1(Z)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->D3:Lcom/mycompany/app/video/VideoSubLayout;

    .line 67
    .line 68
    if-eqz p1, :cond_2

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    const/16 v0, 0x8

    .line 75
    .line 76
    if-eq p1, v0, :cond_2

    .line 77
    .line 78
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->N3:Lcom/mycompany/app/video/VideoActivity$EventHandler;

    .line 79
    .line 80
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->N3:Lcom/mycompany/app/video/VideoActivity$EventHandler;

    .line 84
    .line 85
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 86
    .line 87
    .line 88
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->l3:Lcom/mycompany/app/video/VideoAudio;

    .line 89
    .line 90
    if-eqz p1, :cond_6

    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->e()I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    invoke-virtual {p1, v0}, Lcom/mycompany/app/video/VideoAudio;->b(I)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_4

    .line 105
    .line 106
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->u2:Landroid/media/MediaPlayer;

    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v1}, Lcom/mycompany/app/video/VideoActivity;->I1(Z)V

    .line 112
    .line 113
    .line 114
    :cond_4
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->N3:Lcom/mycompany/app/video/VideoActivity$EventHandler;

    .line 115
    .line 116
    if-eqz p1, :cond_5

    .line 117
    .line 118
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 119
    .line 120
    .line 121
    :cond_5
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->l3:Lcom/mycompany/app/video/VideoAudio;

    .line 122
    .line 123
    if-eqz p1, :cond_6

    .line 124
    .line 125
    invoke-virtual {p1, v1}, Lcom/mycompany/app/video/VideoAudio;->a(Z)V

    .line 126
    .line 127
    .line 128
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->P1()V

    .line 129
    .line 130
    .line 131
    :cond_7
    :goto_1
    return-void
.end method

.method public final N()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->r2:Ljava/lang/String;

    .line 8
    .line 9
    return-object v0
.end method

.method public final N1()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->z2:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->D()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->g()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->c()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->j()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final O()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->B3:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->B3:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    :goto_0
    return-void

    .line 14
    :cond_1
    new-instance v1, Lcom/mycompany/app/video/VideoActivity$67;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/mycompany/app/video/VideoActivity$67;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final O1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyFadeRelative;->f()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Lcom/mycompany/app/video/VideoControl;->C(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final P1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/mycompany/app/video/VideoControl;->E(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->b2:Landroid/app/PictureInPictureParams$Builder;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0}, Lcom/mycompany/app/video/VideoActivity;->H1(Z)V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public final Q0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->u2:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->z2:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    :goto_0
    const/4 v0, 0x0

    .line 11
    return v0

    .line 12
    :cond_1
    iget-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->w2:Z

    .line 13
    .line 14
    return v0
.end method

.method public final R0()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->s3:Z

    .line 2
    .line 3
    if-nez v0, :cond_9

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->p3:Z

    .line 6
    .line 7
    if-nez v0, :cond_9

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->n3:Lcom/mycompany/app/view/MyWebSafe;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_2

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->d2:Landroid/net/Uri;

    .line 16
    .line 17
    if-eqz v0, :cond_9

    .line 18
    .line 19
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->u2:Landroid/media/MediaPlayer;

    .line 20
    .line 21
    if-nez v0, :cond_9

    .line 22
    .line 23
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->t2:Landroid/view/Surface;

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    goto/16 :goto_2

    .line 28
    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->w2:Z

    .line 31
    .line 32
    iput-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->x2:Z

    .line 33
    .line 34
    iput-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->z2:Z

    .line 35
    .line 36
    iput-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->C2:Z

    .line 37
    .line 38
    const/4 v1, -0x1

    .line 39
    iput v1, p0, Lcom/mycompany/app/video/VideoActivity;->E2:I

    .line 40
    .line 41
    iput-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->S2:Z

    .line 42
    .line 43
    iget v1, p0, Lcom/mycompany/app/video/VideoActivity;->g3:F

    .line 44
    .line 45
    const/high16 v2, 0x3f800000    # 1.0f

    .line 46
    .line 47
    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    const/4 v2, 0x1

    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    iput-boolean v2, p0, Lcom/mycompany/app/video/VideoActivity;->y2:Z

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    iput-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->y2:Z

    .line 58
    .line 59
    :goto_0
    iget-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->e2:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v3, p0, Lcom/mycompany/app/video/VideoActivity;->J2:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v1, v3}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    const/4 v3, 0x0

    .line 68
    if-nez v1, :cond_4

    .line 69
    .line 70
    iput-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->T2:Z

    .line 71
    .line 72
    iget-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->J2:Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    xor-int/2addr v1, v2

    .line 79
    iput-boolean v1, p0, Lcom/mycompany/app/video/VideoActivity;->A2:Z

    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->s1()V

    .line 82
    .line 83
    .line 84
    iget-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->l3:Lcom/mycompany/app/video/VideoAudio;

    .line 85
    .line 86
    if-eqz v1, :cond_3

    .line 87
    .line 88
    iput-object v3, v1, Lcom/mycompany/app/video/VideoAudio;->g:Ljava/lang/String;

    .line 89
    .line 90
    iput v0, v1, Lcom/mycompany/app/video/VideoAudio;->h:I

    .line 91
    .line 92
    :cond_3
    move v1, v2

    .line 93
    goto :goto_1

    .line 94
    :cond_4
    move v1, v0

    .line 95
    :goto_1
    iget-object v4, p0, Lcom/mycompany/app/video/VideoActivity;->e2:Ljava/lang/String;

    .line 96
    .line 97
    iput-object v4, p0, Lcom/mycompany/app/video/VideoActivity;->J2:Ljava/lang/String;

    .line 98
    .line 99
    iget-boolean v4, p0, Lcom/mycompany/app/video/VideoActivity;->T2:Z

    .line 100
    .line 101
    if-nez v4, :cond_5

    .line 102
    .line 103
    iget-object v4, p0, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 104
    .line 105
    iget-object v4, v4, Lcom/mycompany/app/video/VideoControl;->Q:Lcom/mycompany/app/view/MyAreaView;

    .line 106
    .line 107
    if-eqz v4, :cond_5

    .line 108
    .line 109
    invoke-virtual {v4, v2}, Lcom/mycompany/app/view/MyAreaView;->setSkipDraw(Z)V

    .line 110
    .line 111
    .line 112
    :cond_5
    invoke-virtual {p0, v2}, Lcom/mycompany/app/video/VideoActivity;->I1(Z)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v0}, Lcom/mycompany/app/video/VideoActivity;->G1(Z)V

    .line 116
    .line 117
    .line 118
    iget-boolean v4, p0, Lcom/mycompany/app/video/VideoActivity;->k2:Z

    .line 119
    .line 120
    if-eqz v4, :cond_7

    .line 121
    .line 122
    iput-boolean v2, p0, Lcom/mycompany/app/video/VideoActivity;->m2:Z

    .line 123
    .line 124
    iget-object v4, p0, Lcom/mycompany/app/video/VideoActivity;->Q1:Lcom/mycompany/app/view/MyCoverView;

    .line 125
    .line 126
    if-eqz v4, :cond_6

    .line 127
    .line 128
    const/high16 v5, -0x1000000

    .line 129
    .line 130
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 131
    .line 132
    .line 133
    :cond_6
    invoke-virtual {p0, v0}, Lcom/mycompany/app/video/VideoActivity;->L1(Z)V

    .line 134
    .line 135
    .line 136
    :cond_7
    new-instance v0, Landroid/media/MediaPlayer;

    .line 137
    .line 138
    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 139
    .line 140
    .line 141
    iput-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->u2:Landroid/media/MediaPlayer;

    .line 142
    .line 143
    iget-object v4, p0, Lcom/mycompany/app/video/VideoActivity;->t2:Landroid/view/Surface;

    .line 144
    .line 145
    invoke-virtual {v0, v4}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->u2:Landroid/media/MediaPlayer;

    .line 149
    .line 150
    new-instance v4, Lcom/mycompany/app/video/VideoActivity$19;

    .line 151
    .line 152
    invoke-direct {v4, p0}, Lcom/mycompany/app/video/VideoActivity$19;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v4}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 156
    .line 157
    .line 158
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->u2:Landroid/media/MediaPlayer;

    .line 159
    .line 160
    new-instance v4, Lcom/mycompany/app/video/VideoActivity$20;

    .line 161
    .line 162
    invoke-direct {v4, p0}, Lcom/mycompany/app/video/VideoActivity$20;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v4}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 166
    .line 167
    .line 168
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->u2:Landroid/media/MediaPlayer;

    .line 169
    .line 170
    new-instance v4, Lcom/mycompany/app/video/VideoActivity$21;

    .line 171
    .line 172
    invoke-direct {v4, p0}, Lcom/mycompany/app/video/VideoActivity$21;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v4}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 176
    .line 177
    .line 178
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->u2:Landroid/media/MediaPlayer;

    .line 179
    .line 180
    new-instance v4, Lcom/mycompany/app/video/VideoActivity$22;

    .line 181
    .line 182
    invoke-direct {v4, p0}, Lcom/mycompany/app/video/VideoActivity$22;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, v4}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 186
    .line 187
    .line 188
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->u2:Landroid/media/MediaPlayer;

    .line 189
    .line 190
    new-instance v4, Lcom/mycompany/app/video/VideoActivity$23;

    .line 191
    .line 192
    invoke-direct {v4, p0}, Lcom/mycompany/app/video/VideoActivity$23;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v4}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 196
    .line 197
    .line 198
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->v2:Lcom/mycompany/app/video/VideoActivity$PlayTask;

    .line 199
    .line 200
    if-eqz v0, :cond_8

    .line 201
    .line 202
    iput-boolean v2, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 203
    .line 204
    :cond_8
    iput-object v3, p0, Lcom/mycompany/app/video/VideoActivity;->v2:Lcom/mycompany/app/video/VideoActivity$PlayTask;

    .line 205
    .line 206
    new-instance v0, Lcom/mycompany/app/video/VideoActivity$PlayTask;

    .line 207
    .line 208
    invoke-direct {v0, p0}, Lcom/mycompany/app/video/VideoActivity$PlayTask;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 209
    .line 210
    .line 211
    iput-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->v2:Lcom/mycompany/app/video/VideoActivity$PlayTask;

    .line 212
    .line 213
    iget-object v2, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 214
    .line 215
    invoke-virtual {v0, v2}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 216
    .line 217
    .line 218
    if-eqz v1, :cond_9

    .line 219
    .line 220
    new-instance v0, Lcom/mycompany/app/video/VideoActivity$77;

    .line 221
    .line 222
    invoke-direct {v0, p0}, Lcom/mycompany/app/video/VideoActivity$77;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p0, v0}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 226
    .line 227
    .line 228
    :cond_9
    :goto_2
    return-void
.end method

.method public final S0(Z)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-boolean v0, Lcom/mycompany/app/pref/PrefVideo;->m:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->s3:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_2

    .line 12
    .line 13
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->i3:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    goto/16 :goto_2

    .line 18
    .line 19
    :cond_1
    iget-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->G1:Z

    .line 20
    .line 21
    if-nez v0, :cond_b

    .line 22
    .line 23
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->V2:Lcom/mycompany/app/dialog/DialogCapture;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    goto/16 :goto_2

    .line 28
    .line 29
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 30
    .line 31
    if-nez v0, :cond_3

    .line 32
    .line 33
    goto/16 :goto_2

    .line 34
    .line 35
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 36
    .line 37
    const/16 v2, 0x1a

    .line 38
    .line 39
    if-ge v1, v2, :cond_4

    .line 40
    .line 41
    if-eqz p1, :cond_b

    .line 42
    .line 43
    sget p1, Lnet/kaki87/soul2/testing/R$string;->pip_info:I

    .line 44
    .line 45
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_4
    const/4 v1, 0x6

    .line 50
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->T5(Landroid/content/Context;I)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_5

    .line 55
    .line 56
    if-eqz p1, :cond_b

    .line 57
    .line 58
    invoke-static {p0, v1}, Lcom/mycompany/app/main/MainUtil;->N4(Landroid/app/Activity;I)Z

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_5
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 63
    .line 64
    const/4 v0, 0x0

    .line 65
    if-eqz p1, :cond_6

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Lcom/mycompany/app/video/VideoControl;->o(Z)V

    .line 68
    .line 69
    .line 70
    :cond_6
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->c1()V

    .line 71
    .line 72
    .line 73
    const/4 p1, 0x1

    .line 74
    iput-boolean p1, p0, Lcom/mycompany/app/setting/CastActivity;->i1:Z

    .line 75
    .line 76
    iget-object v1, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 77
    .line 78
    iget-object v2, p0, Lcom/mycompany/app/video/VideoActivity;->e2:Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {v1}, Lcom/mycompany/app/main/MainApp;->p(Landroid/content/Context;)Lcom/mycompany/app/main/MainApp;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    if-nez v1, :cond_7

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_7
    iput-object v2, v1, Lcom/mycompany/app/main/MainApp;->i:Ljava/lang/String;

    .line 88
    .line 89
    :goto_0
    iget-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->c2:Lcom/mycompany/app/video/VideoActivity$EventReceiver;

    .line 90
    .line 91
    if-eqz v1, :cond_8

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_8
    new-instance v1, Lcom/mycompany/app/video/VideoActivity$EventReceiver;

    .line 95
    .line 96
    invoke-direct {v1, p0}, Lcom/mycompany/app/video/VideoActivity$EventReceiver;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 97
    .line 98
    .line 99
    iput-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->c2:Lcom/mycompany/app/video/VideoActivity$EventReceiver;

    .line 100
    .line 101
    new-instance v1, Landroid/content/IntentFilter;

    .line 102
    .line 103
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 104
    .line 105
    .line 106
    const-string v2, "net.kaki87.soul2.testing.ACTION_VIDEO_FRWD"

    .line 107
    .line 108
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const-string v2, "net.kaki87.soul2.testing.ACTION_VIDEO_PLAY"

    .line 112
    .line 113
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    const-string v2, "net.kaki87.soul2.testing.ACTION_VIDEO_FFWD"

    .line 117
    .line 118
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    const-string v2, "net.kaki87.soul2.testing.ACTION_MUSIC_PAUSE"

    .line 122
    .line 123
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-object v2, p0, Lcom/mycompany/app/video/VideoActivity;->c2:Lcom/mycompany/app/video/VideoActivity$EventReceiver;

    .line 127
    .line 128
    const/4 v3, 0x4

    .line 129
    const/4 v4, 0x0

    .line 130
    invoke-static {p0, v2, v1, v4, v3}, Landroidx/core/content/ContextCompat;->f(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 131
    .line 132
    .line 133
    :goto_1
    iget-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->b2:Landroid/app/PictureInPictureParams$Builder;

    .line 134
    .line 135
    if-nez v1, :cond_9

    .line 136
    .line 137
    move v0, p1

    .line 138
    :cond_9
    invoke-virtual {p0, v0}, Lcom/mycompany/app/video/VideoActivity;->H1(Z)V

    .line 139
    .line 140
    .line 141
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 142
    .line 143
    if-nez p1, :cond_a

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_a
    new-instance v0, Lcom/mycompany/app/video/VideoActivity$79;

    .line 147
    .line 148
    invoke-direct {v0, p0}, Lcom/mycompany/app/video/VideoActivity$79;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 152
    .line 153
    .line 154
    :cond_b
    :goto_2
    return-void
.end method

.method public final T0()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->i2:Z

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/mycompany/app/setting/CastActivity;->i1:Z

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->b2:Landroid/app/PictureInPictureParams$Builder;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/mycompany/app/main/MainApp;->p(Landroid/content/Context;)Lcom/mycompany/app/main/MainApp;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iput-object v0, v1, Lcom/mycompany/app/main/MainApp;->i:Ljava/lang/String;

    .line 18
    .line 19
    :goto_0
    iget-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->c2:Lcom/mycompany/app/video/VideoActivity$EventReceiver;

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->c2:Lcom/mycompany/app/video/VideoActivity$EventReceiver;

    .line 28
    .line 29
    return-void
.end method

.method public final U0(Landroid/content/Intent;)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto/16 :goto_3

    .line 4
    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/mycompany/app/video/VideoActivity;->G2:I

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->I2:Z

    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/mycompany/app/video/VideoActivity;->s3:Z

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->m8()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    sget v1, Lcom/mycompany/app/pref/PrefZtwo;->W:F

    .line 21
    .line 22
    iput v1, p0, Lcom/mycompany/app/video/VideoActivity;->g3:F

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    .line 26
    .line 27
    iput v1, p0, Lcom/mycompany/app/video/VideoActivity;->g3:F

    .line 28
    .line 29
    :goto_0
    const-string v1, "EXTRA_POPUP"

    .line 30
    .line 31
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    iput-boolean v1, p0, Lcom/mycompany/app/video/VideoActivity;->k2:Z

    .line 36
    .line 37
    const-string v2, "video/*"

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    const/4 v4, 0x1

    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    const-string v1, "EXTRA_ORG"

    .line 44
    .line 45
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iput-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->n2:Ljava/lang/String;

    .line 50
    .line 51
    const-string v1, "EXTRA_URL"

    .line 52
    .line 53
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    iput-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->o2:Ljava/lang/String;

    .line 58
    .line 59
    const-string v1, "EXTRA_HOST"

    .line 60
    .line 61
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iput-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->p2:Ljava/lang/String;

    .line 66
    .line 67
    const-string v1, "EXTRA_THUMB"

    .line 68
    .line 69
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iput-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->q2:Ljava/lang/String;

    .line 74
    .line 75
    const-string v1, "EXTRA_INDEX"

    .line 76
    .line 77
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    iput p1, p0, Lcom/mycompany/app/video/VideoActivity;->G2:I

    .line 82
    .line 83
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->e2:Ljava/lang/String;

    .line 84
    .line 85
    invoke-static {p1, v3, v2, v4}, Lcom/mycompany/app/main/MainUtil;->V3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->r2:Ljava/lang/String;

    .line 90
    .line 91
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->p2:Ljava/lang/String;

    .line 92
    .line 93
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-nez p1, :cond_2

    .line 98
    .line 99
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->p2:Ljava/lang/String;

    .line 100
    .line 101
    const-string v1, "youtube"

    .line 102
    .line 103
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-nez p1, :cond_2

    .line 108
    .line 109
    move p1, v4

    .line 110
    goto :goto_1

    .line 111
    :cond_2
    move p1, v0

    .line 112
    :goto_1
    iput-boolean p1, p0, Lcom/mycompany/app/video/VideoActivity;->k3:Z

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->e2:Ljava/lang/String;

    .line 116
    .line 117
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    iput-boolean p1, p0, Lcom/mycompany/app/video/VideoActivity;->k2:Z

    .line 122
    .line 123
    if-eqz p1, :cond_4

    .line 124
    .line 125
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->e2:Ljava/lang/String;

    .line 126
    .line 127
    invoke-static {p1, v3, v2, v4}, Lcom/mycompany/app/main/MainUtil;->V3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->r2:Ljava/lang/String;

    .line 132
    .line 133
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->e2:Ljava/lang/String;

    .line 134
    .line 135
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->m6(Ljava/lang/String;)Z

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    xor-int/2addr p1, v4

    .line 140
    iput-boolean p1, p0, Lcom/mycompany/app/video/VideoActivity;->k3:Z

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_4
    iput-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->k3:Z

    .line 144
    .line 145
    :goto_2
    iget p1, p0, Lcom/mycompany/app/video/VideoActivity;->G2:I

    .line 146
    .line 147
    if-nez p1, :cond_5

    .line 148
    .line 149
    move v0, v4

    .line 150
    :cond_5
    iput-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->H2:Z

    .line 151
    .line 152
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 153
    .line 154
    if-eqz p1, :cond_6

    .line 155
    .line 156
    iget-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->k3:Z

    .line 157
    .line 158
    invoke-virtual {p1, v0}, Lcom/mycompany/app/video/VideoControl;->setIconDown(Z)V

    .line 159
    .line 160
    .line 161
    :cond_6
    :goto_3
    return-void
.end method

.method public final V0(IJ)I
    .locals 8

    .line 1
    const/4 v0, -0x1

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->X0()Ljava/util/List;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_a

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    goto/16 :goto_5

    .line 15
    .line 16
    :cond_0
    iget v2, p0, Lcom/mycompany/app/video/VideoActivity;->H3:I

    .line 17
    .line 18
    int-to-long v2, v2

    .line 19
    add-long/2addr p2, v2

    .line 20
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    add-int/lit8 v3, v2, -0x1

    .line 25
    .line 26
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lcom/mycompany/app/subtitle/SubtitleItem;

    .line 31
    .line 32
    iget-wide v3, v3, Lcom/mycompany/app/subtitle/SubtitleItem;->a:J

    .line 33
    .line 34
    cmp-long v3, v3, p2

    .line 35
    .line 36
    if-gez v3, :cond_1

    .line 37
    .line 38
    return v0

    .line 39
    :cond_1
    if-ltz p1, :cond_5

    .line 40
    .line 41
    if-ge p1, v2, :cond_5

    .line 42
    .line 43
    add-int/lit8 v3, p1, 0x5

    .line 44
    .line 45
    :goto_0
    if-ge p1, v3, :cond_5

    .line 46
    .line 47
    if-lt p1, v2, :cond_2

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    add-int/lit8 v4, p1, 0x1

    .line 51
    .line 52
    if-ge v4, v2, :cond_3

    .line 53
    .line 54
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    check-cast v5, Lcom/mycompany/app/subtitle/SubtitleItem;

    .line 59
    .line 60
    iget-wide v5, v5, Lcom/mycompany/app/subtitle/SubtitleItem;->a:J

    .line 61
    .line 62
    cmp-long v5, v5, p2

    .line 63
    .line 64
    if-gtz v5, :cond_4

    .line 65
    .line 66
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    check-cast v5, Lcom/mycompany/app/subtitle/SubtitleItem;

    .line 71
    .line 72
    iget-wide v5, v5, Lcom/mycompany/app/subtitle/SubtitleItem;->a:J

    .line 73
    .line 74
    cmp-long v5, p2, v5

    .line 75
    .line 76
    if-gez v5, :cond_4

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    check-cast v5, Lcom/mycompany/app/subtitle/SubtitleItem;

    .line 84
    .line 85
    iget-wide v5, v5, Lcom/mycompany/app/subtitle/SubtitleItem;->a:J

    .line 86
    .line 87
    cmp-long v5, v5, p2

    .line 88
    .line 89
    if-gtz v5, :cond_4

    .line 90
    .line 91
    :goto_1
    return p1

    .line 92
    :cond_4
    move p1, v4

    .line 93
    goto :goto_0

    .line 94
    :cond_5
    :goto_2
    const/4 p1, 0x0

    .line 95
    move v3, v2

    .line 96
    :goto_3
    if-gt p1, v3, :cond_a

    .line 97
    .line 98
    add-int v4, p1, v3

    .line 99
    .line 100
    div-int/lit8 v4, v4, 0x2

    .line 101
    .line 102
    if-lt v4, v2, :cond_6

    .line 103
    .line 104
    return v0

    .line 105
    :cond_6
    add-int/lit8 v5, v4, 0x1

    .line 106
    .line 107
    if-ge v5, v2, :cond_9

    .line 108
    .line 109
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    check-cast v6, Lcom/mycompany/app/subtitle/SubtitleItem;

    .line 114
    .line 115
    iget-wide v6, v6, Lcom/mycompany/app/subtitle/SubtitleItem;->a:J

    .line 116
    .line 117
    cmp-long v6, v6, p2

    .line 118
    .line 119
    if-gtz v6, :cond_7

    .line 120
    .line 121
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    check-cast v6, Lcom/mycompany/app/subtitle/SubtitleItem;

    .line 126
    .line 127
    iget-wide v6, v6, Lcom/mycompany/app/subtitle/SubtitleItem;->a:J

    .line 128
    .line 129
    cmp-long v6, p2, v6

    .line 130
    .line 131
    if-gez v6, :cond_7

    .line 132
    .line 133
    goto :goto_4

    .line 134
    :cond_7
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    check-cast v6, Lcom/mycompany/app/subtitle/SubtitleItem;

    .line 139
    .line 140
    iget-wide v6, v6, Lcom/mycompany/app/subtitle/SubtitleItem;->a:J

    .line 141
    .line 142
    cmp-long v6, v6, p2

    .line 143
    .line 144
    if-gez v6, :cond_8

    .line 145
    .line 146
    move p1, v5

    .line 147
    goto :goto_3

    .line 148
    :cond_8
    add-int/lit8 v3, v4, -0x1

    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_9
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    check-cast v3, Lcom/mycompany/app/subtitle/SubtitleItem;

    .line 156
    .line 157
    iget-wide v5, v3, Lcom/mycompany/app/subtitle/SubtitleItem;->a:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .line 159
    cmp-long v3, v5, p2

    .line 160
    .line 161
    if-gtz v3, :cond_8

    .line 162
    .line 163
    :goto_4
    return v4

    .line 164
    :catch_0
    :cond_a
    :goto_5
    return v0
.end method

.method public final W0(I)Lcom/mycompany/app/subtitle/SubtitleItem;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->X0()Ljava/util/List;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    if-ltz p1, :cond_1

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-ge p1, v2, :cond_1

    .line 22
    .line 23
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lcom/mycompany/app/subtitle/SubtitleItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    return-object p1

    .line 30
    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public final X0()Ljava/util/List;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->K3:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget v1, p0, Lcom/mycompany/app/video/VideoActivity;->I3:I

    .line 13
    .line 14
    if-ltz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-ge v1, v2, :cond_1

    .line 21
    .line 22
    iget v1, p0, Lcom/mycompany/app/video/VideoActivity;->I3:I

    .line 23
    .line 24
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Ljava/util/List;

    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_1
    const/4 v1, 0x0

    .line 32
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    return-object v0

    .line 39
    :catch_0
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 40
    return-object v0
.end method

.method public final a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->F1:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    iget v0, p0, Lcom/mycompany/app/video/VideoActivity;->Y1:I

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->T1:Lcom/mycompany/app/zoom/ZoomVideoAttacher;

    .line 17
    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    iget-boolean v0, v0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->n:Z

    .line 21
    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    :goto_0
    const/4 v0, 0x1

    .line 25
    return v0

    .line 26
    :cond_3
    :goto_1
    const/4 v0, 0x0

    .line 27
    return v0
.end method

.method public final a1()Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->X0()Ljava/util/List;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    :catch_0
    :cond_0
    return v0
.end method

.method public final b(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/setting/CastActivity;->i1:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Lcom/mycompany/app/video/VideoControl;->s(Landroid/view/MotionEvent;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->r0()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->V2:Lcom/mycompany/app/dialog/DialogCapture;

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogCapture;->r()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_3
    if-eqz p1, :cond_4

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->w1()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_5

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->r0()V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_4
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->y1()Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-nez p1, :cond_5

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->r0()V

    .line 53
    .line 54
    .line 55
    :cond_5
    :goto_0
    return-void
.end method

.method public final b1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->m3:Lcom/mycompany/app/view/MyPopupMenu;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 9
    .line 10
    .line 11
    iput-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->m3:Lcom/mycompany/app/view/MyPopupMenu;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyFadeRelative;->setAutoHide(Z)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->s3:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget v0, p0, Lcom/mycompany/app/video/VideoActivity;->v3:I

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    const/4 v2, 0x3

    .line 14
    if-ne v0, v2, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->n3:Lcom/mycompany/app/view/MyWebSafe;

    .line 18
    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    const-string v2, "(function(){var ele=document.querySelector(\"iframe[id=\'ytplayer\']\");if(ele){ele=ele.contentDocument.querySelector(\'video\');}if(ele){ele.pause();}})();"

    .line 23
    .line 24
    invoke-static {v0, v2, v1}, Lcom/mycompany/app/main/MainUtil;->J(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    :cond_3
    :goto_0
    return-void

    .line 28
    :cond_4
    iput-boolean v1, p0, Lcom/mycompany/app/video/VideoActivity;->C2:Z

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0, v0}, Lcom/mycompany/app/video/VideoActivity;->M1(Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/mycompany/app/video/VideoActivity;->m1(Z)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final c1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->V2:Lcom/mycompany/app/dialog/DialogCapture;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogCapture;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->V2:Lcom/mycompany/app/dialog/DialogCapture;

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->i1()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->h1()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->e1()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->d1()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->k1()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->f1()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->g1()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->j1()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public controlAudio(Landroid/view/View;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->m3:Lcom/mycompany/app/view/MyPopupMenu;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->b1()V

    .line 12
    .line 13
    .line 14
    if-nez p1, :cond_2

    .line 15
    .line 16
    :goto_0
    return-void

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyFadeRelative;->setAutoHide(Z)V

    .line 23
    .line 24
    .line 25
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->l3:Lcom/mycompany/app/video/VideoAudio;

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    if-eqz v0, :cond_4

    .line 29
    .line 30
    iget-object v0, v0, Lcom/mycompany/app/video/VideoAudio;->g:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_4

    .line 37
    .line 38
    move v0, v2

    .line 39
    goto :goto_1

    .line 40
    :cond_4
    move v0, v1

    .line 41
    :goto_1
    new-instance v7, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    new-instance v3, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 47
    .line 48
    sget v4, Lnet/kaki87/soul2/testing/R$string;->audio_file:I

    .line 49
    .line 50
    invoke-direct {v3, v1, v4}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 57
    .line 58
    sget-boolean v3, Lcom/mycompany/app/pref/PrefSub;->x:Z

    .line 59
    .line 60
    if-eqz v3, :cond_5

    .line 61
    .line 62
    sget v3, Lnet/kaki87/soul2/testing/R$string;->audio_off:I

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_5
    sget v3, Lnet/kaki87/soul2/testing/R$string;->audio_on:I

    .line 66
    .line 67
    :goto_2
    xor-int/2addr v0, v2

    .line 68
    const/4 v4, 0x0

    .line 69
    invoke-direct {v1, v2, v3, v0, v4}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZLjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 76
    .line 77
    const/4 v2, 0x2

    .line 78
    sget v3, Lnet/kaki87/soul2/testing/R$string;->audio_sync:I

    .line 79
    .line 80
    invoke-direct {v1, v2, v3, v0, v4}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZLjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    new-instance v3, Lcom/mycompany/app/view/MyPopupMenu;

    .line 87
    .line 88
    iget-object v5, p0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 89
    .line 90
    new-instance v9, Lcom/mycompany/app/video/VideoActivity$71;

    .line 91
    .line 92
    invoke-direct {v9, p0}, Lcom/mycompany/app/video/VideoActivity$71;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 93
    .line 94
    .line 95
    const/4 v8, 0x1

    .line 96
    move-object v4, p0

    .line 97
    move-object v6, p1

    .line 98
    invoke-direct/range {v3 .. v9}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 99
    .line 100
    .line 101
    iput-object v3, v4, Lcom/mycompany/app/video/VideoActivity;->m3:Lcom/mycompany/app/view/MyPopupMenu;

    .line 102
    .line 103
    iput-object v3, v4, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 104
    .line 105
    return-void
.end method

.method public controlRate(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->s3:Z

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->n3:Lcom/mycompany/app/view/MyWebSafe;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    sget p1, Lnet/kaki87/soul2/testing/R$string;->not_support_video:I

    .line 15
    .line 16
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    iget-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->B3:Z

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->i4:Landroid/view/View;

    .line 26
    .line 27
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 28
    .line 29
    if-nez p1, :cond_3

    .line 30
    .line 31
    :goto_0
    return-void

    .line 32
    :cond_3
    new-instance v0, Lcom/mycompany/app/video/VideoActivity$65;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/mycompany/app/video/VideoActivity$65;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public controlRotate(Landroid/view/View;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->d3:Lcom/mycompany/app/view/MyPopupMenu;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->o1()V

    .line 12
    .line 13
    .line 14
    if-nez p1, :cond_2

    .line 15
    .line 16
    :goto_0
    return-void

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyFadeRelative;->setAutoHide(Z)V

    .line 23
    .line 24
    .line 25
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 31
    .line 32
    sget v2, Lnet/kaki87/soul2/testing/R$string;->rotation:I

    .line 33
    .line 34
    sget v3, Lcom/mycompany/app/pref/PrefVideo;->o:I

    .line 35
    .line 36
    const/4 v4, 0x1

    .line 37
    if-nez v3, :cond_4

    .line 38
    .line 39
    move v3, v4

    .line 40
    goto :goto_1

    .line 41
    :cond_4
    move v3, v1

    .line 42
    :goto_1
    invoke-direct {v0, v1, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 49
    .line 50
    sget v2, Lnet/kaki87/soul2/testing/R$string;->view_port:I

    .line 51
    .line 52
    sget v3, Lcom/mycompany/app/pref/PrefVideo;->o:I

    .line 53
    .line 54
    if-ne v3, v4, :cond_5

    .line 55
    .line 56
    move v3, v4

    .line 57
    goto :goto_2

    .line 58
    :cond_5
    move v3, v1

    .line 59
    :goto_2
    invoke-direct {v0, v4, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 66
    .line 67
    sget v2, Lnet/kaki87/soul2/testing/R$string;->view_land:I

    .line 68
    .line 69
    sget v3, Lcom/mycompany/app/pref/PrefVideo;->o:I

    .line 70
    .line 71
    const/4 v5, 0x2

    .line 72
    if-ne v3, v5, :cond_6

    .line 73
    .line 74
    move v1, v4

    .line 75
    :cond_6
    invoke-direct {v0, v5, v2, v1}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    new-instance v2, Lcom/mycompany/app/view/MyPopupMenu;

    .line 82
    .line 83
    iget-object v4, p0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 84
    .line 85
    new-instance v8, Lcom/mycompany/app/video/VideoActivity$62;

    .line 86
    .line 87
    invoke-direct {v8, p0}, Lcom/mycompany/app/video/VideoActivity$62;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 88
    .line 89
    .line 90
    const/4 v7, 0x1

    .line 91
    move-object v3, p0

    .line 92
    move-object v5, p1

    .line 93
    invoke-direct/range {v2 .. v8}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 94
    .line 95
    .line 96
    iput-object v2, v3, Lcom/mycompany/app/video/VideoActivity;->d3:Lcom/mycompany/app/view/MyPopupMenu;

    .line 97
    .line 98
    iput-object v2, v3, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 99
    .line 100
    return-void
.end method

.method public controlSize(Landroid/view/View;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->n3:Lcom/mycompany/app/view/MyWebSafe;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    sget p1, Lnet/kaki87/soul2/testing/R$string;->not_support_video:I

    .line 11
    .line 12
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->e3:Lcom/mycompany/app/view/MyPopupMenu;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_2
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->p1()V

    .line 22
    .line 23
    .line 24
    if-nez p1, :cond_3

    .line 25
    .line 26
    :goto_0
    return-void

    .line 27
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    if-eqz v0, :cond_4

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyFadeRelative;->setAutoHide(Z)V

    .line 33
    .line 34
    .line 35
    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    sget-object v0, Lcom/mycompany/app/main/MainConst;->P:[I

    .line 41
    .line 42
    array-length v0, v0

    .line 43
    move v2, v1

    .line 44
    :goto_1
    if-ge v2, v0, :cond_6

    .line 45
    .line 46
    new-instance v3, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 47
    .line 48
    sget-object v4, Lcom/mycompany/app/main/MainConst;->P:[I

    .line 49
    .line 50
    aget v4, v4, v2

    .line 51
    .line 52
    sget v5, Lcom/mycompany/app/pref/PrefVideo;->w:I

    .line 53
    .line 54
    if-ne v2, v5, :cond_5

    .line 55
    .line 56
    const/4 v5, 0x1

    .line 57
    goto :goto_2

    .line 58
    :cond_5
    move v5, v1

    .line 59
    :goto_2
    invoke-direct {v3, v2, v4, v5}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    add-int/lit8 v2, v2, 0x1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_6
    new-instance v2, Lcom/mycompany/app/view/MyPopupMenu;

    .line 69
    .line 70
    iget-object v4, p0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 71
    .line 72
    new-instance v8, Lcom/mycompany/app/video/VideoActivity$63;

    .line 73
    .line 74
    invoke-direct {v8, p0}, Lcom/mycompany/app/video/VideoActivity$63;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 75
    .line 76
    .line 77
    const/4 v7, 0x1

    .line 78
    move-object v3, p0

    .line 79
    move-object v5, p1

    .line 80
    invoke-direct/range {v2 .. v8}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 81
    .line 82
    .line 83
    iput-object v2, v3, Lcom/mycompany/app/video/VideoActivity;->e3:Lcom/mycompany/app/view/MyPopupMenu;

    .line 84
    .line 85
    iput-object v2, v3, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 86
    .line 87
    return-void
.end method

.method public controlSubIcon(Landroid/view/View;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->O3:Lcom/mycompany/app/view/MyPopupMenu;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->q1()V

    .line 12
    .line 13
    .line 14
    if-nez p1, :cond_2

    .line 15
    .line 16
    :goto_0
    return-void

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyFadeRelative;->setAutoHide(Z)V

    .line 23
    .line 24
    .line 25
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->K3:Ljava/util/ArrayList;

    .line 26
    .line 27
    if-nez v0, :cond_4

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_2

    .line 35
    :catch_0
    :goto_1
    move v0, v1

    .line 36
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    sget v3, Lnet/kaki87/soul2/testing/R$string;->locale:I

    .line 42
    .line 43
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const/4 v3, 0x1

    .line 51
    if-le v0, v3, :cond_6

    .line 52
    .line 53
    iget v4, p0, Lcom/mycompany/app/video/VideoActivity;->I3:I

    .line 54
    .line 55
    if-lt v4, v0, :cond_5

    .line 56
    .line 57
    move v4, v1

    .line 58
    :cond_5
    const-string v5, " "

    .line 59
    .line 60
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    add-int/2addr v4, v3

    .line 64
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    :cond_6
    new-instance v9, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    new-instance v4, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 73
    .line 74
    sget v5, Lnet/kaki87/soul2/testing/R$string;->sub_file:I

    .line 75
    .line 76
    invoke-direct {v4, v1, v5}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    new-instance v4, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 83
    .line 84
    sget v5, Lnet/kaki87/soul2/testing/R$string;->sub_setting:I

    .line 85
    .line 86
    invoke-direct {v4, v3, v5}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    new-instance v4, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 93
    .line 94
    sget-boolean v5, Lcom/mycompany/app/pref/PrefSub;->k:Z

    .line 95
    .line 96
    if-eqz v5, :cond_7

    .line 97
    .line 98
    sget v5, Lnet/kaki87/soul2/testing/R$string;->sub_off:I

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_7
    sget v5, Lnet/kaki87/soul2/testing/R$string;->sub_on:I

    .line 102
    .line 103
    :goto_3
    if-nez v0, :cond_8

    .line 104
    .line 105
    move v6, v3

    .line 106
    goto :goto_4

    .line 107
    :cond_8
    move v6, v1

    .line 108
    :goto_4
    const/4 v7, 0x2

    .line 109
    const/4 v8, 0x0

    .line 110
    invoke-direct {v4, v7, v5, v6, v8}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZLjava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    new-instance v4, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 117
    .line 118
    sget v5, Lnet/kaki87/soul2/testing/R$string;->sub_sync:I

    .line 119
    .line 120
    if-nez v0, :cond_9

    .line 121
    .line 122
    move v6, v3

    .line 123
    goto :goto_5

    .line 124
    :cond_9
    move v6, v1

    .line 125
    :goto_5
    const/4 v10, 0x3

    .line 126
    invoke-direct {v4, v10, v5, v6, v8}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZLjava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    new-instance v4, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 133
    .line 134
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    if-ge v0, v7, :cond_a

    .line 139
    .line 140
    goto :goto_6

    .line 141
    :cond_a
    move v3, v1

    .line 142
    :goto_6
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 143
    .line 144
    .line 145
    const/4 v0, 0x4

    .line 146
    iput v0, v4, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;->a:I

    .line 147
    .line 148
    iput-object v2, v4, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;->d:Ljava/lang/String;

    .line 149
    .line 150
    iput-boolean v1, v4, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;->e:Z

    .line 151
    .line 152
    iput-boolean v1, v4, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;->f:Z

    .line 153
    .line 154
    iput-boolean v3, v4, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;->g:Z

    .line 155
    .line 156
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    new-instance v5, Lcom/mycompany/app/view/MyPopupMenu;

    .line 160
    .line 161
    iget-object v7, p0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 162
    .line 163
    new-instance v11, Lcom/mycompany/app/video/VideoActivity$73;

    .line 164
    .line 165
    invoke-direct {v11, p0}, Lcom/mycompany/app/video/VideoActivity$73;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 166
    .line 167
    .line 168
    const/4 v10, 0x1

    .line 169
    move-object v6, p0

    .line 170
    move-object v8, p1

    .line 171
    invoke-direct/range {v5 .. v11}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 172
    .line 173
    .line 174
    iput-object v5, v6, Lcom/mycompany/app/video/VideoActivity;->O3:Lcom/mycompany/app/view/MyPopupMenu;

    .line 175
    .line 176
    iput-object v5, v6, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 177
    .line 178
    return-void
.end method

.method public final d1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->Z2:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogDownUrl;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->Z2:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->z3:Z

    .line 13
    .line 14
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->F1:Z

    .line 2
    .line 3
    if-nez v0, :cond_8

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->R1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 6
    .line 7
    if-nez v0, :cond_8

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->S1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 10
    .line 11
    if-nez v0, :cond_8

    .line 12
    .line 13
    if-eqz p1, :cond_8

    .line 14
    .line 15
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-boolean v1, p0, Lcom/mycompany/app/video/VideoActivity;->A3:Z

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->t1()V

    .line 26
    .line 27
    .line 28
    return v2

    .line 29
    :cond_1
    invoke-virtual {v0, p1}, Lcom/mycompany/app/video/VideoControl;->s(Landroid/view/MotionEvent;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->t1()V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->U1:Landroid/view/GestureDetector;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 43
    .line 44
    .line 45
    :cond_2
    return v2

    .line 46
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eq v0, v2, :cond_4

    .line 51
    .line 52
    const/4 v1, 0x3

    .line 53
    if-ne v0, v1, :cond_5

    .line 54
    .line 55
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyFadeRelative;->h()V

    .line 58
    .line 59
    .line 60
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->n3:Lcom/mycompany/app/view/MyWebSafe;

    .line 61
    .line 62
    if-eqz v0, :cond_6

    .line 63
    .line 64
    invoke-virtual {p0, p1}, Lcom/mycompany/app/video/VideoActivity;->x(Landroid/view/MotionEvent;)V

    .line 65
    .line 66
    .line 67
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->U1:Landroid/view/GestureDetector;

    .line 68
    .line 69
    if-eqz v0, :cond_7

    .line 70
    .line 71
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 72
    .line 73
    .line 74
    :cond_7
    invoke-super {p0, p1}, Lcom/mycompany/app/main/MainActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    return p1

    .line 79
    :cond_8
    :goto_0
    invoke-super {p0, p1}, Lcom/mycompany/app/main/MainActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    return p1
.end method

.method public final e()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->Q0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget v0, p0, Lcom/mycompany/app/video/VideoActivity;->E2:I

    .line 10
    .line 11
    const/4 v2, -0x1

    .line 12
    if-eq v0, v2, :cond_1

    .line 13
    .line 14
    return v0

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->u2:Landroid/media/MediaPlayer;

    .line 16
    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    return v1

    .line 20
    :cond_2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-gez v0, :cond_3

    .line 25
    .line 26
    return v1

    .line 27
    :cond_3
    return v0
.end method

.method public final e1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->Y2:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogConfirm;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->Y2:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->z3:Z

    .line 13
    .line 14
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final f()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->Q0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/mycompany/app/video/VideoActivity;->D2:I

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->u2:Landroid/media/MediaPlayer;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget v0, p0, Lcom/mycompany/app/video/VideoActivity;->D2:I

    .line 15
    .line 16
    return v0

    .line 17
    :cond_1
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-gez v0, :cond_2

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    :cond_2
    return v0
.end method

.method public final f1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->b3:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogConfirm;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->b3:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->z3:Z

    .line 13
    .line 14
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final finish()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->G1:Z

    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final g()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->s3:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget v0, p0, Lcom/mycompany/app/video/VideoActivity;->v3:I

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    if-ne v0, v2, :cond_0

    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0

    .line 14
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->Q0()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    iget-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->C2:Z

    .line 21
    .line 22
    :goto_0
    xor-int/2addr v0, v1

    .line 23
    return v0

    .line 24
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->u2:Landroid/media/MediaPlayer;

    .line 25
    .line 26
    if-nez v0, :cond_3

    .line 27
    .line 28
    iget-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->C2:Z

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    return v0
.end method

.method public final g1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->c3:Lcom/mycompany/app/dialog/DialogOpenType;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogOpenType;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->c3:Lcom/mycompany/app/dialog/DialogOpenType;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->z3:Z

    .line 13
    .line 14
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final h(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->Q0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->f()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-lez v0, :cond_2

    .line 13
    .line 14
    iput p1, p0, Lcom/mycompany/app/video/VideoActivity;->E2:I

    .line 15
    .line 16
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->u2:Landroid/media/MediaPlayer;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->l3:Lcom/mycompany/app/video/VideoAudio;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lcom/mycompany/app/video/VideoAudio;->b(I)V

    .line 28
    .line 29
    .line 30
    :cond_2
    iget-boolean p1, p0, Lcom/mycompany/app/video/VideoActivity;->k2:Z

    .line 31
    .line 32
    if-eqz p1, :cond_3

    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    invoke-virtual {p0, p1}, Lcom/mycompany/app/video/VideoActivity;->L1(Z)V

    .line 36
    .line 37
    .line 38
    :cond_3
    :goto_0
    return-void
.end method

.method public final h1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->X2:Lcom/mycompany/app/dialog/DialogSeekAudio;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSeekAudio;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->X2:Lcom/mycompany/app/dialog/DialogSeekAudio;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->z3:Z

    .line 13
    .line 14
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final i()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefRead;->q:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->y1()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->e1()V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->z3:Z

    .line 20
    .line 21
    sput-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 22
    .line 23
    new-instance v1, Lcom/mycompany/app/dialog/DialogConfirm;

    .line 24
    .line 25
    new-instance v2, Lcom/mycompany/app/video/VideoActivity$50;

    .line 26
    .line 27
    invoke-direct {v2, p0}, Lcom/mycompany/app/video/VideoActivity$50;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, p0, v2}, Lcom/mycompany/app/dialog/DialogConfirm;-><init>(Lcom/mycompany/app/main/MainActivity;Lcom/mycompany/app/dialog/DialogConfirm$DialogConfListener;)V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->Y2:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 34
    .line 35
    new-instance v2, Lcom/mycompany/app/video/VideoActivity$51;

    .line 36
    .line 37
    invoke-direct {v2, p0}, Lcom/mycompany/app/video/VideoActivity$51;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->Y2:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 44
    .line 45
    iput-boolean v0, v1, Lcom/mycompany/app/view/MyDialogBottom;->E:Z

    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->K1()V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final i1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->W2:Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSeekBright;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->W2:Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->z3:Z

    .line 13
    .line 14
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final j()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->s3:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget v0, p0, Lcom/mycompany/app/video/VideoActivity;->v3:I

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    if-ne v0, v2, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->n3:Lcom/mycompany/app/view/MyWebSafe;

    .line 18
    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    const-string v2, "(function(){var ele=document.querySelector(\"iframe[id=\'ytplayer\']\");if(ele){ele=ele.contentDocument.querySelector(\'video\');}if(ele){ele.play();}})();"

    .line 23
    .line 24
    invoke-static {v0, v2, v1}, Lcom/mycompany/app/main/MainUtil;->J(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    :cond_3
    :goto_0
    return-void

    .line 28
    :cond_4
    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->C2:Z

    .line 30
    .line 31
    iget-object v2, p0, Lcom/mycompany/app/video/VideoActivity;->b2:Landroid/app/PictureInPictureParams$Builder;

    .line 32
    .line 33
    if-nez v2, :cond_7

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->a0()Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-nez v2, :cond_5

    .line 40
    .line 41
    move v2, v0

    .line 42
    goto :goto_1

    .line 43
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->hasWindowFocus()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    :goto_1
    if-eqz v2, :cond_6

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_6
    move v1, v0

    .line 51
    :cond_7
    :goto_2
    invoke-virtual {p0, v1}, Lcom/mycompany/app/video/VideoActivity;->M1(Z)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final j1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->Q3:Lcom/mycompany/app/dialog/DialogSeekSub;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSeekSub;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->Q3:Lcom/mycompany/app/dialog/DialogSeekSub;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->z3:Z

    .line 13
    .line 14
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final k()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final k0(IILandroid/content/Intent;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->V2:Lcom/mycompany/app/dialog/DialogCapture;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/mycompany/app/dialog/DialogCapture;->o(IILandroid/content/Intent;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->Z2:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0, p1, p2, p3}, Lcom/mycompany/app/dialog/DialogDownUrl;->P(IILandroid/content/Intent;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    goto/16 :goto_0

    .line 24
    .line 25
    :cond_1
    const/4 v0, 0x2

    .line 26
    const/4 v1, -0x1

    .line 27
    const/4 v2, 0x0

    .line 28
    if-ne p1, v0, :cond_2

    .line 29
    .line 30
    if-ne p2, v1, :cond_e

    .line 31
    .line 32
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 33
    .line 34
    if-eqz p1, :cond_e

    .line 35
    .line 36
    invoke-virtual {p1, v2}, Lcom/mycompany/app/video/VideoControl;->setTouchLock(Z)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    const/16 v0, 0x9

    .line 41
    .line 42
    const/4 v3, 0x1

    .line 43
    if-ne p1, v0, :cond_9

    .line 44
    .line 45
    if-ne p2, v1, :cond_e

    .line 46
    .line 47
    if-nez p3, :cond_3

    .line 48
    .line 49
    goto/16 :goto_0

    .line 50
    .line 51
    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-nez p1, :cond_4

    .line 56
    .line 57
    sget p1, Lnet/kaki87/soul2/testing/R$string;->invalid_file:I

    .line 58
    .line 59
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result p3

    .line 71
    if-eqz p3, :cond_5

    .line 72
    .line 73
    sget p1, Lnet/kaki87/soul2/testing/R$string;->invalid_file:I

    .line 74
    .line 75
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_5
    iget-object p3, p0, Lcom/mycompany/app/video/VideoActivity;->G3:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p3

    .line 85
    if-eqz p3, :cond_6

    .line 86
    .line 87
    iget-object p2, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 88
    .line 89
    invoke-static {p2, p1}, Lcom/mycompany/app/main/MainUtil;->z7(Landroid/content/Context;Landroid/net/Uri;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_6
    iget-object p3, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 94
    .line 95
    invoke-static {p3, p2}, Lcom/mycompany/app/main/MainUri;->k(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    invoke-static {p3}, Lcom/mycompany/app/main/MainUtil;->W0(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p3

    .line 103
    invoke-static {p3}, Lcom/mycompany/app/compress/Compress;->H(Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result p3

    .line 107
    if-nez p3, :cond_7

    .line 108
    .line 109
    sget p1, Lnet/kaki87/soul2/testing/R$string;->invalid_file:I

    .line 110
    .line 111
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_7
    iget-object p3, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 116
    .line 117
    invoke-static {p3, p1}, Lcom/mycompany/app/main/MainUtil;->z7(Landroid/content/Context;Landroid/net/Uri;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->s1()V

    .line 121
    .line 122
    .line 123
    iput-object p2, p0, Lcom/mycompany/app/video/VideoActivity;->G3:Ljava/lang/String;

    .line 124
    .line 125
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->J3:Lcom/mycompany/app/video/VideoActivity$SubTask;

    .line 126
    .line 127
    if-eqz p1, :cond_8

    .line 128
    .line 129
    iput-boolean v3, p1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 130
    .line 131
    :cond_8
    const/4 p1, 0x0

    .line 132
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->J3:Lcom/mycompany/app/video/VideoActivity$SubTask;

    .line 133
    .line 134
    new-instance p1, Lcom/mycompany/app/video/VideoActivity$SubTask;

    .line 135
    .line 136
    invoke-direct {p1, p0, v3}, Lcom/mycompany/app/video/VideoActivity$SubTask;-><init>(Lcom/mycompany/app/video/VideoActivity;Z)V

    .line 137
    .line 138
    .line 139
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->J3:Lcom/mycompany/app/video/VideoActivity$SubTask;

    .line 140
    .line 141
    iget-object p2, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 142
    .line 143
    invoke-virtual {p1, p2}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :cond_9
    const/16 v0, 0x11

    .line 148
    .line 149
    if-ne p1, v0, :cond_d

    .line 150
    .line 151
    if-ne p2, v1, :cond_e

    .line 152
    .line 153
    if-nez p3, :cond_a

    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_a
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    if-nez p1, :cond_b

    .line 161
    .line 162
    sget p1, Lnet/kaki87/soul2/testing/R$string;->invalid_file:I

    .line 163
    .line 164
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 165
    .line 166
    .line 167
    return-void

    .line 168
    :cond_b
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p2

    .line 172
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 173
    .line 174
    .line 175
    move-result p3

    .line 176
    if-eqz p3, :cond_c

    .line 177
    .line 178
    sget p1, Lnet/kaki87/soul2/testing/R$string;->invalid_file:I

    .line 179
    .line 180
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :cond_c
    iget-object p3, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 185
    .line 186
    invoke-static {p3, p1}, Lcom/mycompany/app/main/MainUtil;->z7(Landroid/content/Context;Landroid/net/Uri;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0, p2, v2, v3}, Lcom/mycompany/app/video/VideoActivity;->F1(Ljava/lang/String;IZ)V

    .line 190
    .line 191
    .line 192
    return-void

    .line 193
    :cond_d
    if-ne p1, v3, :cond_e

    .line 194
    .line 195
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->J1()V

    .line 196
    .line 197
    .line 198
    :cond_e
    :goto_0
    return-void
.end method

.method public final k1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->a3:Lcom/mycompany/app/dialog/DialogSetDown;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetDown;->dismiss()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->a3:Lcom/mycompany/app/dialog/DialogSetDown;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->z3:Z

    .line 13
    .line 14
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iput-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->f4:Ljava/lang/String;

    .line 18
    .line 19
    iput-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->g4:Ljava/lang/String;

    .line 20
    .line 21
    iput-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->h4:Ljava/lang/String;

    .line 22
    .line 23
    return-void
.end method

.method public final l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->n3:Lcom/mycompany/app/view/MyWebSafe;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget v0, Lnet/kaki87/soul2/testing/R$string;->not_support_video:I

    .line 6
    .line 7
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->z2:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    sget v0, Lnet/kaki87/soul2/testing/R$string;->save_fail:I

    .line 16
    .line 17
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    iget-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->w2:Z

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    sget v0, Lnet/kaki87/soul2/testing/R$string;->wait_retry:I

    .line 26
    .line 27
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->U2:Lcom/mycompany/app/video/VideoActivity$CropTask;

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    iput-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 37
    .line 38
    :cond_3
    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->U2:Lcom/mycompany/app/video/VideoActivity$CropTask;

    .line 40
    .line 41
    new-instance v0, Lcom/mycompany/app/video/VideoActivity$CropTask;

    .line 42
    .line 43
    invoke-direct {v0, p0}, Lcom/mycompany/app/video/VideoActivity$CropTask;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->U2:Lcom/mycompany/app/video/VideoActivity$CropTask;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final l1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->P3:Lcom/mycompany/app/view/MyPopupMenu;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->O3:Lcom/mycompany/app/view/MyPopupMenu;

    .line 6
    .line 7
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->P3:Lcom/mycompany/app/view/MyPopupMenu;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyFadeRelative;->setAutoHide(Z)V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method public final m()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/video/VideoActivity;->Y1:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public final m1(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->Q1:Lcom/mycompany/app/view/MyCoverView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lcom/mycompany/app/video/VideoActivity;->x2:Z

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz p1, :cond_2

    .line 11
    .line 12
    iget-boolean p1, v0, Lcom/mycompany/app/view/MyCoverView;->f:Z

    .line 13
    .line 14
    if-eqz p1, :cond_4

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyCoverView;->setBlockTouch(Z)V

    .line 17
    .line 18
    .line 19
    iget-boolean p1, p0, Lcom/mycompany/app/video/VideoActivity;->m2:Z

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    iput-boolean v1, p0, Lcom/mycompany/app/video/VideoActivity;->m2:Z

    .line 24
    .line 25
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->Q1:Lcom/mycompany/app/view/MyCoverView;

    .line 26
    .line 27
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->Q1:Lcom/mycompany/app/view/MyCoverView;

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    const-wide/16 v3, 0x0

    .line 37
    .line 38
    iput-wide v3, p0, Lcom/mycompany/app/video/VideoActivity;->j3:J

    .line 39
    .line 40
    iget-boolean p1, p0, Lcom/mycompany/app/video/VideoActivity;->k2:Z

    .line 41
    .line 42
    if-eqz p1, :cond_4

    .line 43
    .line 44
    iget-boolean p1, v0, Lcom/mycompany/app/view/MyCoverView;->f:Z

    .line 45
    .line 46
    if-nez p1, :cond_4

    .line 47
    .line 48
    iget-boolean p1, p0, Lcom/mycompany/app/video/VideoActivity;->m2:Z

    .line 49
    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    iput-boolean v1, p0, Lcom/mycompany/app/video/VideoActivity;->m2:Z

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 55
    .line 56
    .line 57
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->Q1:Lcom/mycompany/app/view/MyCoverView;

    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 61
    .line 62
    .line 63
    :cond_4
    :goto_0
    return-void
.end method

.method public final n1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->f3:Lcom/mycompany/app/view/MyPopupMenu;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 9
    .line 10
    .line 11
    iput-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->f3:Lcom/mycompany/app/view/MyPopupMenu;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyFadeRelative;->setAutoHide(Z)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public final o1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->d3:Lcom/mycompany/app/view/MyPopupMenu;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 9
    .line 10
    .line 11
    iput-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->d3:Lcom/mycompany/app/view/MyPopupMenu;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyFadeRelative;->setAutoHide(Z)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/main/MainActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/mycompany/app/setting/CastActivity;->i1:Z

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 10
    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    :goto_0
    return-void

    .line 14
    :cond_1
    new-instance v0, Lcom/mycompany/app/video/VideoActivity$84;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/mycompany/app/video/VideoActivity$84;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/main/MainActivity;->u0:Z

    .line 3
    .line 4
    iput v0, p0, Lcom/mycompany/app/setting/CastActivity;->h1:I

    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/mycompany/app/setting/CastActivity;->onCreate(Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Lcom/mycompany/app/video/VideoActivity$1;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Lcom/mycompany/app/video/VideoActivity$1;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 12
    .line 13
    .line 14
    sget-boolean v1, Lcom/mycompany/app/main/MainConst;->e:Z

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iput-object p1, p0, Lcom/mycompany/app/main/MainActivity;->H0:Lcom/mycompany/app/main/MainActivity$MainViewerListener;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->d0()V

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->d2:Landroid/net/Uri;

    .line 33
    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    sget p1, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 37
    .line 38
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->finish()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 46
    .line 47
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->i8(Landroid/content/Context;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->O5(Landroid/content/Context;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    iput-boolean p1, p0, Lcom/mycompany/app/video/VideoActivity;->D1:Z

    .line 57
    .line 58
    const/4 p1, -0x1

    .line 59
    iput p1, p0, Lcom/mycompany/app/video/VideoActivity;->K2:I

    .line 60
    .line 61
    iget-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->d2:Landroid/net/Uri;

    .line 62
    .line 63
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iput-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->e2:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->v1()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    const/4 v2, 0x0

    .line 77
    if-nez v1, :cond_2

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 81
    .line 82
    const/16 v4, 0x1a

    .line 83
    .line 84
    if-ge v3, v4, :cond_3

    .line 85
    .line 86
    :goto_1
    move v3, v2

    .line 87
    goto :goto_2

    .line 88
    :cond_3
    const-string v3, "EXTRA_PIP"

    .line 89
    .line 90
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    :goto_2
    iput-boolean v3, p0, Lcom/mycompany/app/video/VideoActivity;->i2:Z

    .line 95
    .line 96
    iput-boolean v3, p0, Lcom/mycompany/app/setting/CastActivity;->i1:Z

    .line 97
    .line 98
    invoke-virtual {p0, v1}, Lcom/mycompany/app/video/VideoActivity;->U0(Landroid/content/Intent;)V

    .line 99
    .line 100
    .line 101
    new-instance v1, Lcom/mycompany/app/video/VideoActivity$86;

    .line 102
    .line 103
    invoke-direct {v1, p0}, Lcom/mycompany/app/video/VideoActivity$86;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 104
    .line 105
    .line 106
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->V0:Lcom/mycompany/app/main/MainActivity$SystemBarListener;

    .line 107
    .line 108
    iget-boolean v1, p0, Lcom/mycompany/app/video/VideoActivity;->i2:Z

    .line 109
    .line 110
    if-nez v1, :cond_4

    .line 111
    .line 112
    invoke-static {p0}, Lcom/mycompany/app/main/MainUtil;->S7(Landroid/app/Activity;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->r0()V

    .line 116
    .line 117
    .line 118
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 119
    .line 120
    const/16 v3, 0x1e

    .line 121
    .line 122
    if-ge v1, v3, :cond_5

    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->a0()Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    if-eqz v1, :cond_5

    .line 129
    .line 130
    new-instance v3, Lcom/mycompany/app/video/VideoActivity$2;

    .line 131
    .line 132
    invoke-direct {v3, p0}, Lcom/mycompany/app/video/VideoActivity$2;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 136
    .line 137
    .line 138
    :cond_5
    const/16 v1, 0x13

    .line 139
    .line 140
    const/4 v3, 0x0

    .line 141
    invoke-virtual {p0, v3, v1}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 142
    .line 143
    .line 144
    const/4 v1, 0x2

    .line 145
    invoke-virtual {p0, v3, v1}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 146
    .line 147
    .line 148
    const/16 v1, 0x9

    .line 149
    .line 150
    invoke-virtual {p0, v3, v1}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 151
    .line 152
    .line 153
    const/16 v1, 0x11

    .line 154
    .line 155
    invoke-virtual {p0, v3, v1}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, v3, v0}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 159
    .line 160
    .line 161
    new-instance v3, Lcom/mycompany/app/view/MySizeFrame;

    .line 162
    .line 163
    invoke-direct {v3, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 164
    .line 165
    .line 166
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .line 167
    .line 168
    invoke-direct {v4, p1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    .line 173
    .line 174
    new-instance v4, Landroid/view/TextureView;

    .line 175
    .line 176
    invoke-direct {v4, p0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 177
    .line 178
    .line 179
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 180
    .line 181
    const/4 v6, -0x2

    .line 182
    invoke-direct {v5, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 183
    .line 184
    .line 185
    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 186
    .line 187
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    .line 189
    .line 190
    new-instance v1, Lcom/mycompany/app/video/VideoSubLayout;

    .line 191
    .line 192
    invoke-direct {v1, p0}, Lcom/mycompany/app/video/VideoSubLayout;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 193
    .line 194
    .line 195
    const/16 v5, 0x8

    .line 196
    .line 197
    invoke-virtual {v1, v5}, Lcom/mycompany/app/video/VideoSubLayout;->setVisibility(I)V

    .line 198
    .line 199
    .line 200
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 201
    .line 202
    invoke-direct {v7, p1, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 203
    .line 204
    .line 205
    const v6, 0x800053

    .line 206
    .line 207
    .line 208
    iput v6, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 209
    .line 210
    invoke-virtual {v3, v1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    .line 212
    .line 213
    new-instance v6, Lcom/mycompany/app/video/VideoControl;

    .line 214
    .line 215
    invoke-direct {v6, p0}, Lcom/mycompany/app/video/VideoControl;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 216
    .line 217
    .line 218
    iget v7, p0, Lcom/mycompany/app/video/VideoActivity;->C1:I

    .line 219
    .line 220
    invoke-virtual {v6, v7}, Lcom/mycompany/app/video/VideoControl;->setNaviHeight(I)V

    .line 221
    .line 222
    .line 223
    const/4 v7, 0x4

    .line 224
    invoke-virtual {v6, v7}, Lcom/mycompany/app/video/VideoControl;->setVisibility(I)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v3, v6, p1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 228
    .line 229
    .line 230
    const/high16 v7, 0x40000000    # 2.0f

    .line 231
    .line 232
    invoke-static {p0, v7}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 233
    .line 234
    .line 235
    move-result v7

    .line 236
    float-to-int v7, v7

    .line 237
    new-instance v8, Lcom/mycompany/app/view/MyCoverView;

    .line 238
    .line 239
    sget v9, Lcom/mycompany/app/main/MainApp;->z1:I

    .line 240
    .line 241
    invoke-direct {v8, p0, p1, v7, v9}, Lcom/mycompany/app/view/MyCoverView;-><init>(Landroid/content/Context;III)V

    .line 242
    .line 243
    .line 244
    const/high16 v7, -0x5f000000

    .line 245
    .line 246
    invoke-virtual {v8, v7}, Lcom/mycompany/app/view/MyCoverView;->setBackColor(I)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v8, v5}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v3, v8, p1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 253
    .line 254
    .line 255
    iput-object v3, p0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 256
    .line 257
    iput-object v4, p0, Lcom/mycompany/app/video/VideoActivity;->L1:Landroid/view/TextureView;

    .line 258
    .line 259
    iput-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->C3:Lcom/mycompany/app/video/VideoSubLayout;

    .line 260
    .line 261
    iput-object v6, p0, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 262
    .line 263
    iput-object v8, p0, Lcom/mycompany/app/video/VideoActivity;->Q1:Lcom/mycompany/app/view/MyCoverView;

    .line 264
    .line 265
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 266
    .line 267
    if-nez p1, :cond_6

    .line 268
    .line 269
    goto :goto_3

    .line 270
    :cond_6
    new-instance v1, Lcom/mycompany/app/video/VideoActivity$7;

    .line 271
    .line 272
    invoke-direct {v1, p0}, Lcom/mycompany/app/video/VideoActivity$7;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 276
    .line 277
    .line 278
    :goto_3
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 279
    .line 280
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 281
    .line 282
    .line 283
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->Q1:Lcom/mycompany/app/view/MyCoverView;

    .line 284
    .line 285
    sget v1, Lcom/mycompany/app/main/MainApp;->z1:I

    .line 286
    .line 287
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyCoverView;->setForeSize(I)V

    .line 288
    .line 289
    .line 290
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 291
    .line 292
    new-instance v1, Lcom/mycompany/app/video/VideoActivity$3;

    .line 293
    .line 294
    invoke-direct {v1, p0}, Lcom/mycompany/app/video/VideoActivity$3;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MySizeFrame;->setListener(Lcom/mycompany/app/image/ImageSizeListener;)V

    .line 298
    .line 299
    .line 300
    new-instance p1, Lcom/mycompany/app/zoom/ZoomVideoAttacher;

    .line 301
    .line 302
    iget-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->L1:Landroid/view/TextureView;

    .line 303
    .line 304
    invoke-direct {p1, v1, p0}, Lcom/mycompany/app/zoom/ZoomVideoAttacher;-><init>(Landroid/view/TextureView;Lcom/mycompany/app/zoom/ZoomVideoAttacher$VideoAttacherListener;)V

    .line 305
    .line 306
    .line 307
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->T1:Lcom/mycompany/app/zoom/ZoomVideoAttacher;

    .line 308
    .line 309
    iput-boolean v0, p1, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->m:Z

    .line 310
    .line 311
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->L1:Landroid/view/TextureView;

    .line 312
    .line 313
    new-instance v1, Lcom/mycompany/app/video/VideoActivity$4;

    .line 314
    .line 315
    invoke-direct {v1, p0}, Lcom/mycompany/app/video/VideoActivity$4;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {p1, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 319
    .line 320
    .line 321
    new-instance p1, Landroid/view/GestureDetector;

    .line 322
    .line 323
    new-instance v1, Lcom/mycompany/app/video/VideoActivity$5;

    .line 324
    .line 325
    invoke-direct {v1, p0}, Lcom/mycompany/app/video/VideoActivity$5;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 326
    .line 327
    .line 328
    invoke-direct {p1, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 329
    .line 330
    .line 331
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->U1:Landroid/view/GestureDetector;

    .line 332
    .line 333
    sget-boolean p1, Lcom/mycompany/app/pref/PrefVideo;->j:Z

    .line 334
    .line 335
    if-eqz p1, :cond_a

    .line 336
    .line 337
    if-nez p1, :cond_7

    .line 338
    .line 339
    goto :goto_4

    .line 340
    :cond_7
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->z1()Z

    .line 341
    .line 342
    .line 343
    move-result p1

    .line 344
    if-eqz p1, :cond_8

    .line 345
    .line 346
    goto :goto_4

    .line 347
    :cond_8
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 348
    .line 349
    if-nez p1, :cond_9

    .line 350
    .line 351
    goto :goto_4

    .line 352
    :cond_9
    new-instance v1, Lcom/mycompany/app/video/VideoActivity$12;

    .line 353
    .line 354
    invoke-direct {v1, p0}, Lcom/mycompany/app/video/VideoActivity$12;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 358
    .line 359
    .line 360
    goto :goto_4

    .line 361
    :cond_a
    sget-boolean p1, Lcom/mycompany/app/pref/PrefZone;->b0:Z

    .line 362
    .line 363
    if-eqz p1, :cond_e

    .line 364
    .line 365
    if-nez p1, :cond_b

    .line 366
    .line 367
    goto :goto_4

    .line 368
    :cond_b
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->z1()Z

    .line 369
    .line 370
    .line 371
    move-result p1

    .line 372
    if-eqz p1, :cond_c

    .line 373
    .line 374
    goto :goto_4

    .line 375
    :cond_c
    iput-boolean v2, p0, Lcom/mycompany/app/video/VideoActivity;->R3:Z

    .line 376
    .line 377
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 378
    .line 379
    if-nez p1, :cond_d

    .line 380
    .line 381
    goto :goto_4

    .line 382
    :cond_d
    new-instance v1, Lcom/mycompany/app/video/VideoActivity$16;

    .line 383
    .line 384
    invoke-direct {v1, p0}, Lcom/mycompany/app/video/VideoActivity$16;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 388
    .line 389
    .line 390
    :cond_e
    :goto_4
    iget-boolean p1, p0, Lcom/mycompany/app/video/VideoActivity;->i2:Z

    .line 391
    .line 392
    xor-int/2addr p1, v0

    .line 393
    iput-boolean p1, p0, Lcom/mycompany/app/video/VideoActivity;->H1:Z

    .line 394
    .line 395
    return-void
.end method

.method public final onDestroy()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/CastActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->T0()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->I1:Landroid/view/View;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v2, p0, Lcom/mycompany/app/video/VideoActivity;->J1:Lcom/mycompany/app/video/VideoActivity$SystemRunnable;

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    iput-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->I1:Landroid/view/View;

    .line 20
    .line 21
    :cond_1
    iput-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->J1:Lcom/mycompany/app/video/VideoActivity$SystemRunnable;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iput-object v1, v0, Lcom/mycompany/app/view/MySizeFrame;->c:Lcom/mycompany/app/image/ImageSizeListener;

    .line 28
    .line 29
    iput-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 30
    .line 31
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/mycompany/app/video/VideoControl;->g()V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 39
    .line 40
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->N1:Lcom/mycompany/app/web/WebVideoProgress;

    .line 41
    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebVideoProgress;->f()V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->N1:Lcom/mycompany/app/web/WebVideoProgress;

    .line 48
    .line 49
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->O1:Lcom/mycompany/app/web/WebVideoProgress;

    .line 50
    .line 51
    if-eqz v0, :cond_5

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebVideoProgress;->f()V

    .line 54
    .line 55
    .line 56
    iput-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->O1:Lcom/mycompany/app/web/WebVideoProgress;

    .line 57
    .line 58
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->P1:Lcom/mycompany/app/web/WebVideoProgress;

    .line 59
    .line 60
    if-eqz v0, :cond_6

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebVideoProgress;->f()V

    .line 63
    .line 64
    .line 65
    iput-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->P1:Lcom/mycompany/app/web/WebVideoProgress;

    .line 66
    .line 67
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->Q1:Lcom/mycompany/app/view/MyCoverView;

    .line 68
    .line 69
    if-eqz v0, :cond_7

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyCoverView;->i()V

    .line 72
    .line 73
    .line 74
    iput-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->Q1:Lcom/mycompany/app/view/MyCoverView;

    .line 75
    .line 76
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->R1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 77
    .line 78
    if-eqz v0, :cond_8

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyFadeFrame;->f()V

    .line 81
    .line 82
    .line 83
    iput-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->R1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 84
    .line 85
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->S1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 86
    .line 87
    if-eqz v0, :cond_9

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyFadeFrame;->f()V

    .line 90
    .line 91
    .line 92
    iput-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->S1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 93
    .line 94
    :cond_9
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->T1:Lcom/mycompany/app/zoom/ZoomVideoAttacher;

    .line 95
    .line 96
    if-eqz v0, :cond_a

    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->j()V

    .line 99
    .line 100
    .line 101
    iput-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->T1:Lcom/mycompany/app/zoom/ZoomVideoAttacher;

    .line 102
    .line 103
    :cond_a
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->N3:Lcom/mycompany/app/video/VideoActivity$EventHandler;

    .line 104
    .line 105
    const/4 v2, 0x0

    .line 106
    if-eqz v0, :cond_b

    .line 107
    .line 108
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 109
    .line 110
    .line 111
    iput-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->N3:Lcom/mycompany/app/video/VideoActivity$EventHandler;

    .line 112
    .line 113
    :cond_b
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->D3:Lcom/mycompany/app/video/VideoSubLayout;

    .line 114
    .line 115
    if-eqz v0, :cond_d

    .line 116
    .line 117
    iget-object v3, v0, Lcom/mycompany/app/video/VideoSubLayout;->k:Landroid/animation/ValueAnimator;

    .line 118
    .line 119
    if-eqz v3, :cond_c

    .line 120
    .line 121
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 122
    .line 123
    .line 124
    iput-object v1, v0, Lcom/mycompany/app/video/VideoSubLayout;->k:Landroid/animation/ValueAnimator;

    .line 125
    .line 126
    :cond_c
    iput-object v1, v0, Lcom/mycompany/app/video/VideoSubLayout;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 127
    .line 128
    iput-object v1, v0, Lcom/mycompany/app/video/VideoSubLayout;->f:Lcom/mycompany/app/main/MainActivity;

    .line 129
    .line 130
    iput-object v1, v0, Lcom/mycompany/app/video/VideoSubLayout;->g:Landroid/view/View;

    .line 131
    .line 132
    iput-object v1, v0, Lcom/mycompany/app/video/VideoSubLayout;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 133
    .line 134
    iput-object v1, v0, Lcom/mycompany/app/video/VideoSubLayout;->i:Lcom/mycompany/app/view/MyTextSub;

    .line 135
    .line 136
    iput-object v1, v0, Lcom/mycompany/app/video/VideoSubLayout;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 137
    .line 138
    iput-object v1, v0, Lcom/mycompany/app/video/VideoSubLayout;->l:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 139
    .line 140
    iput-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->D3:Lcom/mycompany/app/video/VideoSubLayout;

    .line 141
    .line 142
    :cond_d
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->E3:Lcom/mycompany/app/web/WebVideoProgress;

    .line 143
    .line 144
    if-eqz v0, :cond_e

    .line 145
    .line 146
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebVideoProgress;->f()V

    .line 147
    .line 148
    .line 149
    iput-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->E3:Lcom/mycompany/app/web/WebVideoProgress;

    .line 150
    .line 151
    :cond_e
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->n3:Lcom/mycompany/app/view/MyWebSafe;

    .line 152
    .line 153
    if-eqz v0, :cond_10

    .line 154
    .line 155
    iget-boolean v3, p0, Lcom/mycompany/app/video/VideoActivity;->o3:Z

    .line 156
    .line 157
    if-eqz v3, :cond_f

    .line 158
    .line 159
    iput-boolean v2, p0, Lcom/mycompany/app/video/VideoActivity;->o3:Z

    .line 160
    .line 161
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 162
    .line 163
    .line 164
    :cond_f
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->n3:Lcom/mycompany/app/view/MyWebSafe;

    .line 165
    .line 166
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->P6(Landroid/webkit/WebView;)V

    .line 167
    .line 168
    .line 169
    iput-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->n3:Lcom/mycompany/app/view/MyWebSafe;

    .line 170
    .line 171
    :cond_10
    iput-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->L1:Landroid/view/TextureView;

    .line 172
    .line 173
    iput-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->U1:Landroid/view/GestureDetector;

    .line 174
    .line 175
    iput-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->d2:Landroid/net/Uri;

    .line 176
    .line 177
    iput-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->e2:Ljava/lang/String;

    .line 178
    .line 179
    iput-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->n2:Ljava/lang/String;

    .line 180
    .line 181
    iput-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->o2:Ljava/lang/String;

    .line 182
    .line 183
    iput-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->p2:Ljava/lang/String;

    .line 184
    .line 185
    iput-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->q2:Ljava/lang/String;

    .line 186
    .line 187
    iput-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->r2:Ljava/lang/String;

    .line 188
    .line 189
    iput-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->J2:Ljava/lang/String;

    .line 190
    .line 191
    iput-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->r3:Ljava/lang/String;

    .line 192
    .line 193
    iput-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->F3:Lcom/mycompany/app/view/MyTextView;

    .line 194
    .line 195
    iput-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->G3:Ljava/lang/String;

    .line 196
    .line 197
    iput-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->K3:Ljava/util/ArrayList;

    .line 198
    .line 199
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    const/16 v0, 0x4f

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq p1, v0, :cond_5

    .line 5
    .line 6
    const/16 v0, 0x55

    .line 7
    .line 8
    if-eq p1, v0, :cond_5

    .line 9
    .line 10
    const/16 v0, 0x56

    .line 11
    .line 12
    if-eq p1, v0, :cond_3

    .line 13
    .line 14
    const/16 v0, 0x7e

    .line 15
    .line 16
    if-eq p1, v0, :cond_0

    .line 17
    .line 18
    const/16 v0, 0x7f

    .line 19
    .line 20
    if-eq p1, v0, :cond_3

    .line 21
    .line 22
    invoke-super {p0, p1, p2}, Lcom/mycompany/app/main/MainActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->x1()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-boolean p1, p0, Lcom/mycompany/app/video/VideoActivity;->z2:Z

    .line 35
    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->D()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->O1()V

    .line 42
    .line 43
    .line 44
    return v1

    .line 45
    :cond_2
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->g()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_6

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->j()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->O1()V

    .line 55
    .line 56
    .line 57
    return v1

    .line 58
    :cond_3
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->x1()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_4

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_4
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->g()Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_6

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->c()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->O1()V

    .line 75
    .line 76
    .line 77
    return v1

    .line 78
    :cond_5
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->x1()Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_7

    .line 83
    .line 84
    :cond_6
    :goto_0
    return v1

    .line 85
    :cond_7
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->N1()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->O1()V

    .line 89
    .line 90
    .line 91
    return v1
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->H1:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->f2:Z

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->g2:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->h2:Ljava/lang/String;

    .line 19
    .line 20
    iget-boolean v2, p0, Lcom/mycompany/app/setting/CastActivity;->i1:Z

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string v2, "EXTRA_NOTI"

    .line 27
    .line 28
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_8

    .line 37
    .line 38
    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    if-nez v2, :cond_1

    .line 43
    .line 44
    sget p1, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 45
    .line 46
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->finish()V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    iget-object v4, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 54
    .line 55
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->O5(Landroid/content/Context;)Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    iput-boolean v4, p0, Lcom/mycompany/app/video/VideoActivity;->D1:Z

    .line 60
    .line 61
    iget-object v5, p0, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 62
    .line 63
    if-eqz v5, :cond_2

    .line 64
    .line 65
    invoke-virtual {v5, v4}, Lcom/mycompany/app/video/VideoControl;->setRtl(Z)V

    .line 66
    .line 67
    .line 68
    :cond_2
    iput-object v2, p0, Lcom/mycompany/app/video/VideoActivity;->d2:Landroid/net/Uri;

    .line 69
    .line 70
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    iget-object v4, p0, Lcom/mycompany/app/video/VideoActivity;->e2:Ljava/lang/String;

    .line 75
    .line 76
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-nez v4, :cond_3

    .line 81
    .line 82
    iget-object v4, p0, Lcom/mycompany/app/video/VideoActivity;->e2:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-eqz v4, :cond_3

    .line 89
    .line 90
    move v4, v3

    .line 91
    goto :goto_1

    .line 92
    :cond_3
    move v4, v0

    .line 93
    :goto_1
    iput-object v2, p0, Lcom/mycompany/app/video/VideoActivity;->e2:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->v1()V

    .line 96
    .line 97
    .line 98
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 99
    .line 100
    const/16 v5, 0x1a

    .line 101
    .line 102
    if-ge v2, v5, :cond_4

    .line 103
    .line 104
    move v2, v0

    .line 105
    goto :goto_2

    .line 106
    :cond_4
    const-string v2, "EXTRA_PIP"

    .line 107
    .line 108
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    :goto_2
    iput-boolean v2, p0, Lcom/mycompany/app/video/VideoActivity;->i2:Z

    .line 113
    .line 114
    iput-boolean v2, p0, Lcom/mycompany/app/setting/CastActivity;->i1:Z

    .line 115
    .line 116
    if-nez v4, :cond_7

    .line 117
    .line 118
    invoke-virtual {p0, p1}, Lcom/mycompany/app/video/VideoActivity;->U0(Landroid/content/Intent;)V

    .line 119
    .line 120
    .line 121
    iget-boolean p1, p0, Lcom/mycompany/app/video/VideoActivity;->s3:Z

    .line 122
    .line 123
    if-nez p1, :cond_6

    .line 124
    .line 125
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->n3:Lcom/mycompany/app/view/MyWebSafe;

    .line 126
    .line 127
    if-eqz p1, :cond_6

    .line 128
    .line 129
    iget-boolean v2, p0, Lcom/mycompany/app/video/VideoActivity;->o3:Z

    .line 130
    .line 131
    if-eqz v2, :cond_5

    .line 132
    .line 133
    iput-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->o3:Z

    .line 134
    .line 135
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 136
    .line 137
    .line 138
    :cond_5
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->n3:Lcom/mycompany/app/view/MyWebSafe;

    .line 139
    .line 140
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->P6(Landroid/webkit/WebView;)V

    .line 141
    .line 142
    .line 143
    iput-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->n3:Lcom/mycompany/app/view/MyWebSafe;

    .line 144
    .line 145
    iput-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->p3:Z

    .line 146
    .line 147
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 148
    .line 149
    if-eqz p1, :cond_6

    .line 150
    .line 151
    invoke-virtual {p1}, Lcom/mycompany/app/video/VideoControl;->z()V

    .line 152
    .line 153
    .line 154
    :cond_6
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->C1()V

    .line 155
    .line 156
    .line 157
    :cond_7
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->c1()V

    .line 158
    .line 159
    .line 160
    iget-boolean p1, p0, Lcom/mycompany/app/video/VideoActivity;->i2:Z

    .line 161
    .line 162
    xor-int/2addr p1, v3

    .line 163
    iput-boolean p1, p0, Lcom/mycompany/app/video/VideoActivity;->H1:Z

    .line 164
    .line 165
    return-void

    .line 166
    :cond_8
    const-string v0, "EXTRA_TYPE"

    .line 167
    .line 168
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    iput-boolean v3, p0, Lcom/mycompany/app/video/VideoActivity;->f2:Z

    .line 173
    .line 174
    iput-object v2, p0, Lcom/mycompany/app/video/VideoActivity;->g2:Ljava/lang/String;

    .line 175
    .line 176
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->h2:Ljava/lang/String;

    .line 177
    .line 178
    return-void
.end method

.method public final onPause()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/CastActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->E1:Z

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/mycompany/app/video/VideoActivity;->z3:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->V2:Lcom/mycompany/app/dialog/DialogCapture;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-boolean v1, v1, Lcom/mycompany/app/dialog/DialogCapture;->U:Z

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/mycompany/app/video/VideoActivity;->w2:Z

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->f()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const/16 v2, 0xa

    .line 35
    .line 36
    if-le v1, v2, :cond_2

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->e()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    iget-object v2, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 43
    .line 44
    iget-object v3, p0, Lcom/mycompany/app/video/VideoActivity;->e2:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v2, v1, v3}, Lcom/mycompany/app/db/book/DbBookVpos;->b(Landroid/content/Context;ILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move v1, v0

    .line 51
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    const/4 v3, 0x1

    .line 56
    if-eqz v2, :cond_8

    .line 57
    .line 58
    iget-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->l3:Lcom/mycompany/app/video/VideoAudio;

    .line 59
    .line 60
    const/4 v2, 0x0

    .line 61
    if-eqz v1, :cond_5

    .line 62
    .line 63
    iget-object v4, v1, Lcom/mycompany/app/video/VideoAudio;->d:Lcom/mycompany/app/video/VideoAudio$PlayTask;

    .line 64
    .line 65
    if-eqz v4, :cond_3

    .line 66
    .line 67
    iput-boolean v3, v4, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 68
    .line 69
    :cond_3
    iput-object v2, v1, Lcom/mycompany/app/video/VideoAudio;->d:Lcom/mycompany/app/video/VideoAudio$PlayTask;

    .line 70
    .line 71
    iput-boolean v0, v1, Lcom/mycompany/app/video/VideoAudio;->e:Z

    .line 72
    .line 73
    iput-boolean v0, v1, Lcom/mycompany/app/video/VideoAudio;->f:Z

    .line 74
    .line 75
    iget-object v0, v1, Lcom/mycompany/app/video/VideoAudio;->c:Landroid/media/MediaPlayer;

    .line 76
    .line 77
    iput-object v0, v1, Lcom/mycompany/app/video/VideoAudio;->i:Landroid/media/MediaPlayer;

    .line 78
    .line 79
    iput-object v2, v1, Lcom/mycompany/app/video/VideoAudio;->c:Landroid/media/MediaPlayer;

    .line 80
    .line 81
    if-nez v0, :cond_4

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_4
    iget-object v0, v1, Lcom/mycompany/app/video/VideoAudio;->a:Landroid/content/Context;

    .line 85
    .line 86
    new-instance v4, Lcom/mycompany/app/video/VideoAudio$4;

    .line 87
    .line 88
    invoke-direct {v4, v1}, Lcom/mycompany/app/video/VideoAudio$4;-><init>(Lcom/mycompany/app/video/VideoAudio;)V

    .line 89
    .line 90
    .line 91
    invoke-static {v0, v4}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 92
    .line 93
    .line 94
    :goto_2
    iput-object v2, v1, Lcom/mycompany/app/video/VideoAudio;->a:Landroid/content/Context;

    .line 95
    .line 96
    iput-object v2, v1, Lcom/mycompany/app/video/VideoAudio;->b:Lcom/mycompany/app/video/VideoAudio$AudioListener;

    .line 97
    .line 98
    iput-object v2, v1, Lcom/mycompany/app/video/VideoAudio;->g:Ljava/lang/String;

    .line 99
    .line 100
    iput-object v2, p0, Lcom/mycompany/app/video/VideoActivity;->l3:Lcom/mycompany/app/video/VideoAudio;

    .line 101
    .line 102
    :cond_5
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->C1()V

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->U2:Lcom/mycompany/app/video/VideoActivity$CropTask;

    .line 106
    .line 107
    if-eqz v0, :cond_6

    .line 108
    .line 109
    iput-boolean v3, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 110
    .line 111
    :cond_6
    iput-object v2, p0, Lcom/mycompany/app/video/VideoActivity;->U2:Lcom/mycompany/app/video/VideoActivity$CropTask;

    .line 112
    .line 113
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->J3:Lcom/mycompany/app/video/VideoActivity$SubTask;

    .line 114
    .line 115
    if-eqz v0, :cond_7

    .line 116
    .line 117
    iput-boolean v3, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 118
    .line 119
    :cond_7
    iput-object v2, p0, Lcom/mycompany/app/video/VideoActivity;->J3:Lcom/mycompany/app/video/VideoActivity$SubTask;

    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->c1()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->o1()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->p1()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->n1()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->b1()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->q1()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->l1()V

    .line 140
    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->b2:Landroid/app/PictureInPictureParams$Builder;

    .line 144
    .line 145
    if-nez v0, :cond_a

    .line 146
    .line 147
    iget-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->w2:Z

    .line 148
    .line 149
    if-eqz v0, :cond_9

    .line 150
    .line 151
    iput v1, p0, Lcom/mycompany/app/video/VideoActivity;->G2:I

    .line 152
    .line 153
    iget-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->i3:Z

    .line 154
    .line 155
    xor-int/2addr v0, v3

    .line 156
    iput-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->I2:Z

    .line 157
    .line 158
    :cond_9
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->C1()V

    .line 159
    .line 160
    .line 161
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->n3:Lcom/mycompany/app/view/MyWebSafe;

    .line 162
    .line 163
    if-eqz v0, :cond_a

    .line 164
    .line 165
    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 166
    .line 167
    .line 168
    :cond_a
    :goto_3
    iput-boolean v3, p0, Lcom/mycompany/app/video/VideoActivity;->F1:Z

    .line 169
    .line 170
    return-void
.end method

.method public final onResume()V
    .locals 10

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/CastActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->E1:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/mycompany/app/video/VideoActivity;->F1:Z

    .line 9
    .line 10
    iput-boolean v1, p0, Lcom/mycompany/app/video/VideoActivity;->B3:Z

    .line 11
    .line 12
    iput-boolean v1, p0, Lcom/mycompany/app/video/VideoActivity;->i3:Z

    .line 13
    .line 14
    iget-boolean v2, p0, Lcom/mycompany/app/setting/CastActivity;->i1:Z

    .line 15
    .line 16
    iput-boolean v2, p0, Lcom/mycompany/app/video/VideoActivity;->j2:Z

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->T0()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/mycompany/app/video/VideoActivity;->m1(Z)V

    .line 22
    .line 23
    .line 24
    iget-boolean v2, p0, Lcom/mycompany/app/video/VideoActivity;->t3:Z

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    iput-boolean v1, p0, Lcom/mycompany/app/video/VideoActivity;->t3:Z

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->u1()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->R0()V

    .line 35
    .line 36
    .line 37
    :goto_0
    iget-object v2, p0, Lcom/mycompany/app/video/VideoActivity;->n3:Lcom/mycompany/app/view/MyWebSafe;

    .line 38
    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    invoke-virtual {v2}, Landroid/webkit/WebView;->onResume()V

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-boolean v2, p0, Lcom/mycompany/app/video/VideoActivity;->z3:Z

    .line 45
    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    iget-object v2, p0, Lcom/mycompany/app/video/VideoActivity;->V2:Lcom/mycompany/app/dialog/DialogCapture;

    .line 53
    .line 54
    if-eqz v2, :cond_3

    .line 55
    .line 56
    iget-boolean v2, v2, Lcom/mycompany/app/dialog/DialogCapture;->U:Z

    .line 57
    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 61
    .line 62
    .line 63
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->r1()V

    .line 64
    .line 65
    .line 66
    iget-boolean v2, p0, Lcom/mycompany/app/video/VideoActivity;->f2:Z

    .line 67
    .line 68
    if-eqz v2, :cond_9

    .line 69
    .line 70
    iget-object v2, p0, Lcom/mycompany/app/video/VideoActivity;->g2:Ljava/lang/String;

    .line 71
    .line 72
    iget-object v3, p0, Lcom/mycompany/app/video/VideoActivity;->h2:Ljava/lang/String;

    .line 73
    .line 74
    iput-boolean v1, p0, Lcom/mycompany/app/video/VideoActivity;->f2:Z

    .line 75
    .line 76
    const/4 v4, 0x0

    .line 77
    iput-object v4, p0, Lcom/mycompany/app/video/VideoActivity;->g2:Ljava/lang/String;

    .line 78
    .line 79
    iput-object v4, p0, Lcom/mycompany/app/video/VideoActivity;->h2:Ljava/lang/String;

    .line 80
    .line 81
    invoke-static {p0, v2, v3, v1, v1}, Lcom/mycompany/app/main/MainUtil;->d(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-eqz v3, :cond_4

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_4
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->y1()Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-eqz v3, :cond_5

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_5
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->g1()V

    .line 96
    .line 97
    .line 98
    iput-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->z3:Z

    .line 99
    .line 100
    sput-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 101
    .line 102
    sget v3, Lnet/kaki87/soul2/testing/R$style;->DialogExpandTheme:I

    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->h0()Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-eqz v4, :cond_6

    .line 109
    .line 110
    move v3, v1

    .line 111
    :cond_6
    new-instance v4, Lcom/mycompany/app/dialog/DialogOpenType;

    .line 112
    .line 113
    invoke-direct {v4, p0, v3, v2, v1}, Lcom/mycompany/app/dialog/DialogOpenType;-><init>(Landroid/app/Activity;ILjava/lang/String;Z)V

    .line 114
    .line 115
    .line 116
    iput-object v4, p0, Lcom/mycompany/app/video/VideoActivity;->c3:Lcom/mycompany/app/dialog/DialogOpenType;

    .line 117
    .line 118
    new-instance v1, Lcom/mycompany/app/video/VideoActivity$58;

    .line 119
    .line 120
    invoke-direct {v1, p0}, Lcom/mycompany/app/video/VideoActivity$58;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 124
    .line 125
    .line 126
    sget-boolean v1, Lcom/mycompany/app/main/MainConst;->e:Z

    .line 127
    .line 128
    if-nez v1, :cond_7

    .line 129
    .line 130
    if-eqz v3, :cond_8

    .line 131
    .line 132
    :cond_7
    iget-object v4, p0, Lcom/mycompany/app/video/VideoActivity;->c3:Lcom/mycompany/app/dialog/DialogOpenType;

    .line 133
    .line 134
    const/4 v6, 0x0

    .line 135
    const/4 v9, 0x1

    .line 136
    const/4 v5, 0x0

    .line 137
    const/4 v7, 0x0

    .line 138
    const/4 v8, 0x0

    .line 139
    invoke-virtual/range {v4 .. v9}, Lcom/mycompany/app/view/MyDialogBottom;->x(IIZZZ)V

    .line 140
    .line 141
    .line 142
    :cond_8
    iget-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->c3:Lcom/mycompany/app/dialog/DialogOpenType;

    .line 143
    .line 144
    iput-boolean v0, v1, Lcom/mycompany/app/view/MyDialogBottom;->E:Z

    .line 145
    .line 146
    return-void

    .line 147
    :cond_9
    iget-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->i2:Z

    .line 148
    .line 149
    if-nez v0, :cond_a

    .line 150
    .line 151
    iget-boolean v1, p0, Lcom/mycompany/app/video/VideoActivity;->j2:Z

    .line 152
    .line 153
    if-nez v1, :cond_a

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_a
    if-nez v0, :cond_b

    .line 157
    .line 158
    iget-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->j2:Z

    .line 159
    .line 160
    if-eqz v0, :cond_b

    .line 161
    .line 162
    invoke-static {p0}, Lcom/mycompany/app/main/MainUtil;->S7(Landroid/app/Activity;)V

    .line 163
    .line 164
    .line 165
    :cond_b
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 166
    .line 167
    if-nez v0, :cond_c

    .line 168
    .line 169
    :goto_2
    return-void

    .line 170
    :cond_c
    new-instance v1, Lcom/mycompany/app/video/VideoActivity$6;

    .line 171
    .line 172
    invoke-direct {v1, p0}, Lcom/mycompany/app/video/VideoActivity$6;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 176
    .line 177
    .line 178
    return-void
.end method

.method public final onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->b2:Landroid/app/PictureInPictureParams$Builder;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->C1()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->finish()V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->T0()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final onUserLeaveHint()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onUserLeaveHint()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/mycompany/app/video/VideoActivity;->S0(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/mycompany/app/setting/CastActivity;->i1:Z

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 10
    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    :goto_0
    return-void

    .line 14
    :cond_1
    new-instance v0, Lcom/mycompany/app/video/VideoActivity$83;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/mycompany/app/video/VideoActivity$83;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final p1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->e3:Lcom/mycompany/app/view/MyPopupMenu;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 9
    .line 10
    .line 11
    iput-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->e3:Lcom/mycompany/app/view/MyPopupMenu;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyFadeRelative;->setAutoHide(Z)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public final q()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->O1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final q1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->O3:Lcom/mycompany/app/view/MyPopupMenu;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 9
    .line 10
    .line 11
    iput-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->O3:Lcom/mycompany/app/view/MyPopupMenu;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->P3:Lcom/mycompany/app/view/MyPopupMenu;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyFadeRelative;->setAutoHide(Z)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public final r1()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->H1:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->E1:Z

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 12
    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_2
    invoke-virtual {v0}, Lcom/mycompany/app/video/VideoControl;->getCastIcon()Landroid/widget/FrameLayout;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/mycompany/app/video/VideoControl;->getCastCtrl()Landroid/widget/FrameLayout;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-eqz v0, :cond_4

    .line 27
    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_3
    new-instance v2, Lcom/mycompany/app/video/VideoActivity$VideoCastListener;

    .line 32
    .line 33
    invoke-direct {v2, p0}, Lcom/mycompany/app/video/VideoActivity$VideoCastListener;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0, v1, v2}, Lcom/mycompany/app/setting/CastActivity;->v0(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/mycompany/app/setting/CastActivity$MyCastListener;)V

    .line 37
    .line 38
    .line 39
    :cond_4
    :goto_0
    return-void
.end method

.method public final s1()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->G3:Ljava/lang/String;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lcom/mycompany/app/video/VideoActivity;->H3:I

    .line 6
    .line 7
    iput v1, p0, Lcom/mycompany/app/video/VideoActivity;->I3:I

    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->K3:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput v1, p0, Lcom/mycompany/app/video/VideoActivity;->L3:I

    .line 12
    .line 13
    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lcom/mycompany/app/video/VideoActivity;->M3:I

    .line 15
    .line 16
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->N3:Lcom/mycompany/app/video/VideoActivity$EventHandler;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->D3:Lcom/mycompany/app/video/VideoSubLayout;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    const/16 v1, 0x8

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/mycompany/app/video/VideoSubLayout;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public final t1()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->V1:Z

    .line 3
    .line 4
    iput v0, p0, Lcom/mycompany/app/video/VideoActivity;->Y1:I

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->Z1:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->a2:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->F2:Z

    .line 11
    .line 12
    return-void
.end method

.method public final u()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->O1:Lcom/mycompany/app/web/WebVideoProgress;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebVideoProgress;->getProgress()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final u1()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_1

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->e2:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    goto/16 :goto_1

    .line 16
    .line 17
    :cond_1
    iget-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->s3:Z

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    iput-boolean v1, p0, Lcom/mycompany/app/video/VideoActivity;->w2:Z

    .line 23
    .line 24
    iput-boolean v1, p0, Lcom/mycompany/app/video/VideoActivity;->x2:Z

    .line 25
    .line 26
    iput-boolean v1, p0, Lcom/mycompany/app/video/VideoActivity;->z2:Z

    .line 27
    .line 28
    iput-boolean v1, p0, Lcom/mycompany/app/video/VideoActivity;->C2:Z

    .line 29
    .line 30
    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lcom/mycompany/app/video/VideoActivity;->E2:I

    .line 32
    .line 33
    iput-boolean v1, p0, Lcom/mycompany/app/video/VideoActivity;->S2:Z

    .line 34
    .line 35
    iput-boolean v1, p0, Lcom/mycompany/app/video/VideoActivity;->y2:Z

    .line 36
    .line 37
    :cond_2
    iget-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->p3:Z

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_3
    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity;->p3:Z

    .line 44
    .line 45
    iget-object v2, p0, Lcom/mycompany/app/video/VideoActivity;->n3:Lcom/mycompany/app/view/MyWebSafe;

    .line 46
    .line 47
    const-wide/16 v3, 0x190

    .line 48
    .line 49
    if-eqz v2, :cond_5

    .line 50
    .line 51
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 52
    .line 53
    if-nez v0, :cond_4

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_4
    new-instance v1, Lcom/mycompany/app/video/VideoActivity$30;

    .line 57
    .line 58
    invoke-direct {v1, p0}, Lcom/mycompany/app/video/VideoActivity$30;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_5
    iget-object v2, p0, Lcom/mycompany/app/video/VideoActivity;->l3:Lcom/mycompany/app/video/VideoAudio;

    .line 66
    .line 67
    const/4 v5, 0x0

    .line 68
    if-eqz v2, :cond_8

    .line 69
    .line 70
    iget-object v6, v2, Lcom/mycompany/app/video/VideoAudio;->d:Lcom/mycompany/app/video/VideoAudio$PlayTask;

    .line 71
    .line 72
    if-eqz v6, :cond_6

    .line 73
    .line 74
    iput-boolean v0, v6, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 75
    .line 76
    :cond_6
    iput-object v5, v2, Lcom/mycompany/app/video/VideoAudio;->d:Lcom/mycompany/app/video/VideoAudio$PlayTask;

    .line 77
    .line 78
    iput-boolean v1, v2, Lcom/mycompany/app/video/VideoAudio;->e:Z

    .line 79
    .line 80
    iput-boolean v1, v2, Lcom/mycompany/app/video/VideoAudio;->f:Z

    .line 81
    .line 82
    iget-object v1, v2, Lcom/mycompany/app/video/VideoAudio;->c:Landroid/media/MediaPlayer;

    .line 83
    .line 84
    iput-object v1, v2, Lcom/mycompany/app/video/VideoAudio;->i:Landroid/media/MediaPlayer;

    .line 85
    .line 86
    iput-object v5, v2, Lcom/mycompany/app/video/VideoAudio;->c:Landroid/media/MediaPlayer;

    .line 87
    .line 88
    if-nez v1, :cond_7

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_7
    iget-object v1, v2, Lcom/mycompany/app/video/VideoAudio;->a:Landroid/content/Context;

    .line 92
    .line 93
    new-instance v6, Lcom/mycompany/app/video/VideoAudio$4;

    .line 94
    .line 95
    invoke-direct {v6, v2}, Lcom/mycompany/app/video/VideoAudio$4;-><init>(Lcom/mycompany/app/video/VideoAudio;)V

    .line 96
    .line 97
    .line 98
    invoke-static {v1, v6}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 99
    .line 100
    .line 101
    :goto_0
    iput-object v5, v2, Lcom/mycompany/app/video/VideoAudio;->a:Landroid/content/Context;

    .line 102
    .line 103
    iput-object v5, v2, Lcom/mycompany/app/video/VideoAudio;->b:Lcom/mycompany/app/video/VideoAudio$AudioListener;

    .line 104
    .line 105
    iput-object v5, v2, Lcom/mycompany/app/video/VideoAudio;->g:Ljava/lang/String;

    .line 106
    .line 107
    iput-object v5, p0, Lcom/mycompany/app/video/VideoActivity;->l3:Lcom/mycompany/app/video/VideoAudio;

    .line 108
    .line 109
    :cond_8
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->C1()V

    .line 110
    .line 111
    .line 112
    iget-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->U2:Lcom/mycompany/app/video/VideoActivity$CropTask;

    .line 113
    .line 114
    if-eqz v1, :cond_9

    .line 115
    .line 116
    iput-boolean v0, v1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 117
    .line 118
    :cond_9
    iput-object v5, p0, Lcom/mycompany/app/video/VideoActivity;->U2:Lcom/mycompany/app/video/VideoActivity$CropTask;

    .line 119
    .line 120
    iget-object v1, p0, Lcom/mycompany/app/video/VideoActivity;->J3:Lcom/mycompany/app/video/VideoActivity$SubTask;

    .line 121
    .line 122
    if-eqz v1, :cond_a

    .line 123
    .line 124
    iput-boolean v0, v1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 125
    .line 126
    :cond_a
    iput-object v5, p0, Lcom/mycompany/app/video/VideoActivity;->J3:Lcom/mycompany/app/video/VideoActivity$SubTask;

    .line 127
    .line 128
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 129
    .line 130
    if-nez v0, :cond_b

    .line 131
    .line 132
    :goto_1
    return-void

    .line 133
    :cond_b
    new-instance v1, Lcom/mycompany/app/video/VideoActivity$31;

    .line 134
    .line 135
    invoke-direct {v1, p0}, Lcom/mycompany/app/video/VideoActivity$31;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v1, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 139
    .line 140
    .line 141
    return-void
.end method

.method public final v1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->e2:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->x4(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->r3:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    xor-int/lit8 v1, v0, 0x1

    .line 14
    .line 15
    iput-boolean v1, p0, Lcom/mycompany/app/video/VideoActivity;->s3:Z

    .line 16
    .line 17
    iput-boolean v1, p0, Lcom/mycompany/app/video/VideoActivity;->t3:Z

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iput v1, p0, Lcom/mycompany/app/video/VideoActivity;->v3:I

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iput v1, p0, Lcom/mycompany/app/video/VideoActivity;->x3:I

    .line 25
    .line 26
    iput v1, p0, Lcom/mycompany/app/video/VideoActivity;->y3:I

    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public final w1()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyFadeRelative;->f()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final x(Landroid/view/MotionEvent;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_5

    .line 7
    .line 8
    if-eq v0, v1, :cond_2

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    if-eq v0, v2, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x3

    .line 14
    if-eq v0, p1, :cond_2

    .line 15
    .line 16
    goto/16 :goto_4

    .line 17
    .line 18
    :cond_0
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->l4:Landroid/view/MotionEvent;

    .line 19
    .line 20
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    goto/16 :goto_4

    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->k4:Ljava/lang/Runnable;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->l4:Landroid/view/MotionEvent;

    .line 39
    .line 40
    iget-boolean p1, p0, Lcom/mycompany/app/video/VideoActivity;->A3:Z

    .line 41
    .line 42
    if-eqz p1, :cond_3

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    iput-boolean v1, p0, Lcom/mycompany/app/video/VideoActivity;->A3:Z

    .line 46
    .line 47
    iget p1, p0, Lcom/mycompany/app/video/VideoActivity;->Y1:I

    .line 48
    .line 49
    iput p1, p0, Lcom/mycompany/app/video/VideoActivity;->n4:I

    .line 50
    .line 51
    iget-boolean p1, p0, Lcom/mycompany/app/video/VideoActivity;->Z1:Z

    .line 52
    .line 53
    iput-boolean p1, p0, Lcom/mycompany/app/video/VideoActivity;->o4:Z

    .line 54
    .line 55
    iget-boolean p1, p0, Lcom/mycompany/app/video/VideoActivity;->F2:Z

    .line 56
    .line 57
    iput-boolean p1, p0, Lcom/mycompany/app/video/VideoActivity;->p4:Z

    .line 58
    .line 59
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 60
    .line 61
    if-nez p1, :cond_4

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->m4:Ljava/lang/Runnable;

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 72
    .line 73
    .line 74
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->t1()V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 79
    .line 80
    const/4 v2, 0x0

    .line 81
    invoke-virtual {v0, v2}, Lcom/mycompany/app/video/VideoControl;->setIconClicked(Z)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoActivity;->t1()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    iput v0, p0, Lcom/mycompany/app/video/VideoActivity;->W1:F

    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    iput v0, p0, Lcom/mycompany/app/video/VideoActivity;->X1:F

    .line 98
    .line 99
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 100
    .line 101
    iget-boolean v3, v0, Lcom/mycompany/app/video/VideoControl;->n0:Z

    .line 102
    .line 103
    if-nez v3, :cond_12

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/mycompany/app/video/VideoControl;->q()Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_6

    .line 110
    .line 111
    goto/16 :goto_4

    .line 112
    .line 113
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->D3:Lcom/mycompany/app/video/VideoSubLayout;

    .line 114
    .line 115
    if-nez v0, :cond_7

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    const/4 v4, -0x1

    .line 123
    if-nez v3, :cond_a

    .line 124
    .line 125
    iget-object v3, v0, Lcom/mycompany/app/video/VideoSubLayout;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 126
    .line 127
    if-nez v3, :cond_8

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    float-to-int v3, v3

    .line 135
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    float-to-int p1, p1

    .line 140
    iget-object v5, v0, Lcom/mycompany/app/video/VideoSubLayout;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 141
    .line 142
    if-nez v5, :cond_9

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_9
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    .line 146
    .line 147
    .line 148
    move-result v5

    .line 149
    iget-object v6, v0, Lcom/mycompany/app/video/VideoSubLayout;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 150
    .line 151
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    add-int/2addr v6, v5

    .line 156
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 157
    .line 158
    .line 159
    move-result v7

    .line 160
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 161
    .line 162
    .line 163
    move-result v8

    .line 164
    add-int/2addr v8, v7

    .line 165
    if-ge v5, v6, :cond_a

    .line 166
    .line 167
    if-ge v7, v8, :cond_a

    .line 168
    .line 169
    if-lt v3, v5, :cond_a

    .line 170
    .line 171
    if-ge v3, v6, :cond_a

    .line 172
    .line 173
    if-lt p1, v7, :cond_a

    .line 174
    .line 175
    if-ge p1, v8, :cond_a

    .line 176
    .line 177
    iget-object p1, v0, Lcom/mycompany/app/video/VideoSubLayout;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 178
    .line 179
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    if-eqz v3, :cond_b

    .line 188
    .line 189
    :cond_a
    :goto_1
    move p1, v4

    .line 190
    goto :goto_2

    .line 191
    :cond_b
    iget-object v3, v0, Lcom/mycompany/app/video/VideoSubLayout;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 192
    .line 193
    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 194
    .line 195
    .line 196
    iput-boolean v1, v0, Lcom/mycompany/app/video/VideoSubLayout;->p:Z

    .line 197
    .line 198
    invoke-virtual {v0, p1, v1}, Lcom/mycompany/app/video/VideoSubLayout;->i(Ljava/lang/CharSequence;Z)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0}, Lcom/mycompany/app/video/VideoSubLayout;->getSubBottom()I

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    :goto_2
    if-ne p1, v4, :cond_f

    .line 206
    .line 207
    :goto_3
    iget p1, p0, Lcom/mycompany/app/video/VideoActivity;->W1:F

    .line 208
    .line 209
    sget v0, Lcom/mycompany/app/main/MainApp;->t1:I

    .line 210
    .line 211
    int-to-float v0, v0

    .line 212
    cmpg-float v2, p1, v0

    .line 213
    .line 214
    if-ltz v2, :cond_12

    .line 215
    .line 216
    iget v2, p0, Lcom/mycompany/app/video/VideoActivity;->X1:F

    .line 217
    .line 218
    cmpg-float v0, v2, v0

    .line 219
    .line 220
    if-gez v0, :cond_c

    .line 221
    .line 222
    goto :goto_4

    .line 223
    :cond_c
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 224
    .line 225
    if-nez v0, :cond_d

    .line 226
    .line 227
    goto :goto_4

    .line 228
    :cond_d
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    sget v2, Lcom/mycompany/app/main/MainApp;->t1:I

    .line 233
    .line 234
    sub-int/2addr v0, v2

    .line 235
    int-to-float v0, v0

    .line 236
    cmpl-float p1, p1, v0

    .line 237
    .line 238
    if-gtz p1, :cond_12

    .line 239
    .line 240
    iget p1, p0, Lcom/mycompany/app/video/VideoActivity;->X1:F

    .line 241
    .line 242
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 243
    .line 244
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    sget v2, Lcom/mycompany/app/main/MainApp;->t1:I

    .line 249
    .line 250
    sub-int/2addr v0, v2

    .line 251
    int-to-float v0, v0

    .line 252
    cmpl-float p1, p1, v0

    .line 253
    .line 254
    if-lez p1, :cond_e

    .line 255
    .line 256
    goto :goto_4

    .line 257
    :cond_e
    iput-boolean v1, p0, Lcom/mycompany/app/video/VideoActivity;->V1:Z

    .line 258
    .line 259
    return-void

    .line 260
    :cond_f
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 261
    .line 262
    if-eqz v0, :cond_10

    .line 263
    .line 264
    invoke-virtual {v0, v2}, Lcom/mycompany/app/video/VideoControl;->o(Z)V

    .line 265
    .line 266
    .line 267
    :cond_10
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->F3:Lcom/mycompany/app/view/MyTextView;

    .line 268
    .line 269
    if-eqz v0, :cond_11

    .line 270
    .line 271
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    .line 277
    .line 278
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->E3:Lcom/mycompany/app/web/WebVideoProgress;

    .line 279
    .line 280
    invoke-virtual {p1, v2}, Lcom/mycompany/app/view/MyFadeLinear;->setVisibility(I)V

    .line 281
    .line 282
    .line 283
    :cond_11
    const/4 p1, 0x4

    .line 284
    iput p1, p0, Lcom/mycompany/app/video/VideoActivity;->Y1:I

    .line 285
    .line 286
    iput-boolean v1, p0, Lcom/mycompany/app/video/VideoActivity;->V1:Z

    .line 287
    .line 288
    :cond_12
    :goto_4
    return-void
.end method

.method public final x1()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 13
    .line 14
    iget-boolean v0, v0, Lcom/mycompany/app/video/VideoControl;->n0:Z

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    return v0

    .line 21
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 22
    return v0
.end method

.method public final y1()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->V2:Lcom/mycompany/app/dialog/DialogCapture;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->W2:Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    return v1

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->X2:Lcom/mycompany/app/dialog/DialogSeekAudio;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    return v1

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->Y2:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    return v1

    .line 22
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->Z2:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 23
    .line 24
    if-eqz v0, :cond_4

    .line 25
    .line 26
    return v1

    .line 27
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->a3:Lcom/mycompany/app/dialog/DialogSetDown;

    .line 28
    .line 29
    if-eqz v0, :cond_5

    .line 30
    .line 31
    return v1

    .line 32
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->b3:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 33
    .line 34
    if-eqz v0, :cond_6

    .line 35
    .line 36
    return v1

    .line 37
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->c3:Lcom/mycompany/app/dialog/DialogOpenType;

    .line 38
    .line 39
    if-eqz v0, :cond_7

    .line 40
    .line 41
    return v1

    .line 42
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->Q3:Lcom/mycompany/app/dialog/DialogSeekSub;

    .line 43
    .line 44
    if-eqz v0, :cond_8

    .line 45
    .line 46
    return v1

    .line 47
    :cond_8
    const/4 v0, 0x0

    .line 48
    return v0
.end method

.method public final z(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/setting/CastActivity;->i1:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->r0()V

    .line 12
    .line 13
    .line 14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    .line 16
    const/16 v1, 0x1e

    .line 17
    .line 18
    if-lt v0, v1, :cond_2

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_2
    if-eqz p1, :cond_3

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->a0()Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity;->I1:Landroid/view/View;

    .line 28
    .line 29
    if-eqz p1, :cond_4

    .line 30
    .line 31
    new-instance v0, Lcom/mycompany/app/video/VideoActivity$SystemRunnable;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/mycompany/app/video/VideoActivity$SystemRunnable;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->J1:Lcom/mycompany/app/video/VideoActivity$SystemRunnable;

    .line 37
    .line 38
    new-instance v0, Lcom/mycompany/app/video/VideoActivity$68;

    .line 39
    .line 40
    invoke-direct {v0, p0}, Lcom/mycompany/app/video/VideoActivity$68;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_3
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->a0()Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-eqz p1, :cond_4

    .line 52
    .line 53
    new-instance v0, Lcom/mycompany/app/video/VideoActivity$69;

    .line 54
    .line 55
    invoke-direct {v0, p0}, Lcom/mycompany/app/video/VideoActivity$69;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 59
    .line 60
    .line 61
    :cond_4
    :goto_0
    return-void
.end method

.method public final z1()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/setting/CastActivity;->i1:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->R1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    return v1

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->S1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    return v1

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 18
    .line 19
    if-nez v0, :cond_3

    .line 20
    .line 21
    return v1

    .line 22
    :cond_3
    const/4 v0, 0x0

    .line 23
    return v0
.end method
