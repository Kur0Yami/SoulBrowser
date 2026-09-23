.class public Lcom/mycompany/app/image/ImageViewPageEffect;
.super Lcom/mycompany/app/image/ImageViewWrapper;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/image/ImageViewControl$ControlListener;
.implements Lcom/mycompany/app/zoom/ZoomImageAttacher$AttacherListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/image/ImageViewPageEffect$EventHandler;,
        Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener;,
        Lcom/mycompany/app/image/ImageViewPageEffect$LoadTask;,
        Lcom/mycompany/app/image/ImageViewPageEffect$BookTask;,
        Lcom/mycompany/app/image/ImageViewPageEffect$ImageTask;
    }
.end annotation


# instance fields
.field public A:I

.field public A0:Z

.field public B:Lcom/mycompany/app/image/ImageViewPageEffect$EventHandler;

.field public B0:Z

.field public C:Z

.field public C0:Z

.field public D:I

.field public D0:Z

.field public E:Lcom/mycompany/app/compress/Compress;

.field public E0:Z

.field public F:Lcom/mycompany/app/compress/Compress;

.field public F0:F

.field public G:Lcom/mycompany/app/dialog/DialogEditText;

.field public G0:F

.field public H:Ljava/lang/String;

.field public H0:Z

.field public I:Z

.field public I0:Z

.field public J:Lcom/mycompany/app/view/MySizeFrame;

.field public J0:Z

.field public K:Lcom/mycompany/app/curl/CurlView;

.field public K0:Z

.field public L:I

.field public L0:Landroid/view/GestureDetector;

.field public M:Lcom/mycompany/app/view/MyCoverView;

.field public M0:Lcom/mycompany/app/view/MyFadeFrame;

.field public N:Landroid/widget/FrameLayout;

.field public N0:Z

.field public O:Lcom/mycompany/app/view/MyImageView;

.field public O0:Landroid/os/Handler;

.field public final P:I

.field public P0:Z

.field public Q:Lcom/mycompany/app/view/MyButtonImage;

.field public Q0:Z

.field public R:Lcom/mycompany/app/image/ImageGifView;

.field public R0:Landroid/widget/FrameLayout;

.field public S:Z

.field public S0:Lcom/mycompany/app/web/WebTransOcrCtrl;

.field public T:Lcom/mycompany/app/view/MyCoverView;

.field public T0:Lcom/mycompany/app/image/ImageTransView;

.field public U:Lcom/mycompany/app/image/ImageCoverView;

.field public U0:Lcom/mycompany/app/dialog/DialogTransLang;

.field public V:Lcom/mycompany/app/image/ImageViewControl;

.field public V0:Lcom/mycompany/app/dialog/DialogConfirm;

.field public W:I

.field public W0:Lcom/mycompany/app/dialog/DialogConfirm;

.field public X:I

.field public X0:Lcom/mycompany/app/dialog/DialogConfirm;

.field public Y:Lcom/mycompany/app/view/MyFadeLinear;

.field public Y0:Lcom/mycompany/app/dialog/DialogConfirm;

.field public Z:Landroid/view/View;

.field public Z0:Lcom/mycompany/app/dialog/DialogSeekSimple;

.field public final a:Ljava/lang/Object;

.field public a0:Landroidx/appcompat/widget/AppCompatTextView;

.field public a1:Lcom/mycompany/app/dialog/DialogSetImgTrans;

.field public b:Landroid/content/Context;

.field public b0:Landroidx/appcompat/widget/AppCompatTextView;

.field public b1:Lcom/mycompany/app/view/MyPopupMenu;

.field public c:Lcom/mycompany/app/image/ImageViewActivity;

.field public c0:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field public c1:Lcom/mycompany/app/view/MyPopupMenu;

.field public d:Landroid/view/Window;

.field public d0:Lcom/mycompany/app/list/ListTask;

.field public d1:Lcom/mycompany/app/ocr/OcrDetector;

.field public e:I

.field public e0:Z

.field public e1:Ljava/lang/String;

.field public f:Z

.field public f0:Z

.field public f1:I

.field public g:Lcom/mycompany/app/image/ImageViewActivity$SavedItem;

.field public g0:Lcom/mycompany/app/image/ImageViewPageEffect$LoadTask;

.field public g1:Ljava/lang/String;

.field public h:Z

.field public h0:Lcom/mycompany/app/image/ImageViewPageEffect$BookTask;

.field public h1:I

.field public i:Z

.field public i0:Ljava/util/ArrayList;

.field public i1:Landroid/graphics/Bitmap;

.field public j:Z

.field public j0:Ljava/util/ArrayList;

.field public j1:Ljava/lang/String;

.field public k:Z

.field public k0:I

.field public k1:Ljava/lang/String;

.field public l:Z

.field public l0:Lcom/mycompany/app/zoom/ZoomImageAttacher;

.field public l1:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public m0:Landroid/graphics/RectF;

.field public m1:Lcom/mycompany/app/web/WebTransOcrCtrl;

.field public n:Z

.field public n0:Z

.field public n1:Landroid/view/View;

.field public o:Ljava/util/ArrayList;

.field public o0:Z

.field public o1:Z

.field public p:I

.field public p0:Lcom/mycompany/app/dialog/DialogImageType;

.field public p1:Z

.field public q:Lcom/mycompany/app/web/WebLoadWrap;

.field public q0:Lcom/mycompany/app/dialog/DialogSeekBright;

.field public q1:Ljava/lang/String;

.field public r:Lcom/mycompany/app/web/WebLoadWrap;

.field public r0:Lcom/mycompany/app/dialog/DialogImageBack;

.field public r1:Landroid/graphics/Bitmap;

.field public s:Z

.field public s0:Lcom/mycompany/app/dialog/DialogListBook;

.field public s1:Ljava/lang/String;

.field public t:I

.field public t0:Lcom/mycompany/app/dialog/DialogCapture;

.field public t1:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public u0:Lcom/mycompany/app/dialog/DialogDownUrl;

.field public u1:Ljava/lang/String;

.field public v:I

.field public v0:Lcom/mycompany/app/dialog/DialogSetDown;

.field public v1:Lcom/mycompany/app/main/MainUri$UriItem;

.field public w:Ljava/lang/String;

.field public w0:Lcom/mycompany/app/dialog/DialogPreview;

.field public w1:I

.field public x:I

.field public x0:Lcom/mycompany/app/dialog/DialogSetImage;

.field public y:I

.field public y0:Lcom/mycompany/app/view/MyPopupMenu;

.field public z:I

.field public z0:Lcom/mycompany/app/view/MyPopupMenu;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mycompany/app/image/ImageViewActivity;Landroid/view/Window;Landroid/content/Intent;Lcom/mycompany/app/image/ImageViewActivity$SavedItem;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    .line 1
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->a:Ljava/lang/Object;

    const/4 v3, 0x1

    .line 3
    iput-boolean v3, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->h:Z

    move-object/from16 v4, p1

    .line 4
    iput-object v4, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    move-object/from16 v4, p2

    .line 5
    iput-object v4, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    move-object/from16 v4, p3

    .line 6
    iput-object v4, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->d:Landroid/view/Window;

    .line 7
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->f1()V

    .line 8
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->e1()V

    const/4 v4, 0x0

    .line 9
    iput-boolean v4, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->l:Z

    const/16 v5, 0xc

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, -0x1

    if-eqz v2, :cond_0

    .line 10
    iget-boolean v1, v2, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->a:Z

    iput-boolean v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->k:Z

    .line 11
    iget-object v1, v2, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->m:Ljava/lang/String;

    .line 12
    iget-boolean v1, v2, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->c:Z

    iput-boolean v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->n:Z

    .line 13
    iget-object v1, v2, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->d:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->o:Ljava/util/ArrayList;

    .line 14
    iget v1, v2, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->e:I

    iput v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->p:I

    .line 15
    iget v1, v2, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->m:I

    iput v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->t:I

    .line 16
    iget-object v1, v2, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->i:Ljava/lang/String;

    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->u:Ljava/lang/String;

    .line 17
    iget v1, v2, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->f:I

    iput v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    .line 18
    iget-object v1, v2, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->g:Lcom/mycompany/app/compress/Compress;

    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->F:Lcom/mycompany/app/compress/Compress;

    .line 19
    iget-object v1, v2, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 20
    iget v1, v2, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->j:I

    iput v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 21
    iget v1, v2, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->k:I

    iput v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 22
    iget v1, v2, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->l:I

    iput v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 23
    iget-boolean v1, v2, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->n:Z

    iput-boolean v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->S:Z

    .line 24
    iget v1, v2, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->o:I

    iput v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->P:I

    goto/16 :goto_0

    :cond_0
    if-nez v1, :cond_1

    goto/16 :goto_0

    .line 25
    :cond_1
    const-string v2, "EXTRA_TYPE"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    if-nez v2, :cond_2

    goto/16 :goto_0

    .line 26
    :cond_2
    const-string v2, "EXTRA_INDEX"

    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v8, :cond_3

    goto/16 :goto_0

    .line 27
    :cond_3
    iget v9, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    const-string v10, "EXTRA_BOOK"

    if-ne v9, v3, :cond_6

    .line 28
    iget-object v9, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    invoke-static {v9}, Lcom/mycompany/app/data/DataAlbum;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataAlbum;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/mycompany/app/data/DataList;->f(I)Lcom/mycompany/app/main/MainItem$ChildItem;

    move-result-object v2

    if-nez v2, :cond_4

    goto/16 :goto_0

    .line 29
    :cond_4
    invoke-virtual {v1, v10, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 30
    iget v9, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    iput v9, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->t:I

    .line 31
    iget-object v9, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    iput-object v9, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->u:Ljava/lang/String;

    .line 32
    iget-object v9, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    iput-object v9, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 33
    iget v9, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->s:I

    iput v9, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    if-nez v1, :cond_5

    .line 34
    sget-boolean v1, Lcom/mycompany/app/pref/PrefList;->q:Z

    if-eqz v1, :cond_f

    .line 35
    :cond_5
    iget v1, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->t:I

    iput v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 36
    iget v1, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->u:I

    iput v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    goto/16 :goto_0

    .line 37
    :cond_6
    const-string v11, "EXTRA_PATH"

    if-ne v9, v7, :cond_a

    .line 38
    invoke-virtual {v1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 39
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 40
    iput-boolean v3, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->k:Z

    .line 41
    iput-boolean v3, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->l:Z

    goto/16 :goto_0

    .line 42
    :cond_7
    iget-object v9, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    invoke-static {v9}, Lcom/mycompany/app/data/DataPdf;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataPdf;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/mycompany/app/data/DataList;->f(I)Lcom/mycompany/app/main/MainItem$ChildItem;

    move-result-object v2

    if-nez v2, :cond_8

    goto/16 :goto_0

    .line 43
    :cond_8
    invoke-virtual {v1, v10, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 44
    iget v9, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    iput v9, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->t:I

    .line 45
    iget-object v9, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    iput-object v9, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->u:Ljava/lang/String;

    .line 46
    iget-object v9, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    iput-object v9, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 47
    iget v9, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->s:I

    iput v9, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    if-nez v1, :cond_9

    .line 48
    sget-boolean v1, Lcom/mycompany/app/pref/PrefList;->q:Z

    if-eqz v1, :cond_f

    .line 49
    :cond_9
    iget v1, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->t:I

    iput v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 50
    iget v1, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->u:I

    iput v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    goto/16 :goto_0

    :cond_a
    if-ne v9, v6, :cond_e

    .line 51
    invoke-virtual {v1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 52
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 53
    iput-boolean v3, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->k:Z

    .line 54
    iput-boolean v3, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->l:Z

    goto :goto_0

    .line 55
    :cond_b
    iget-object v9, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    invoke-static {v9}, Lcom/mycompany/app/data/DataCmp;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataCmp;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/mycompany/app/data/DataList;->f(I)Lcom/mycompany/app/main/MainItem$ChildItem;

    move-result-object v2

    if-nez v2, :cond_c

    goto :goto_0

    .line 56
    :cond_c
    invoke-virtual {v1, v10, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 57
    iget v9, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    iput v9, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->t:I

    .line 58
    iget-object v9, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    iput-object v9, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->u:Ljava/lang/String;

    .line 59
    iget-object v9, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    iput-object v9, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 60
    iget v9, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->s:I

    iput v9, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    if-nez v1, :cond_d

    .line 61
    sget-boolean v1, Lcom/mycompany/app/pref/PrefList;->q:Z

    if-eqz v1, :cond_f

    .line 62
    :cond_d
    iget v1, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->t:I

    iput v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 63
    iget v1, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->u:I

    iput v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    goto :goto_0

    :cond_e
    if-ne v9, v5, :cond_f

    .line 64
    const-string v9, "EXTRA_NAME"

    invoke-virtual {v1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->u:Ljava/lang/String;

    .line 65
    iget-object v9, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    invoke-static {v9}, Lcom/mycompany/app/data/DataUrl;->b(Landroid/content/Context;)Lcom/mycompany/app/data/DataUrl;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mycompany/app/data/DataUrl;->a()I

    move-result v9

    iput v9, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 66
    iput v2, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 67
    const-string v2, "EXTRA_PAGE"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 68
    const-string v2, "EXTRA_REFERER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->m:Ljava/lang/String;

    .line 69
    const-string v2, "EXTRA_PRELOAD"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->n:Z

    .line 70
    const-string v2, "EXTRA_LOAD_TYPE"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->p:I

    .line 71
    :cond_f
    :goto_0
    iget v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    if-eq v1, v3, :cond_10

    if-eq v1, v7, :cond_10

    if-eq v1, v6, :cond_10

    if-eq v1, v5, :cond_10

    .line 72
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    sget v2, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 73
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->k0()V

    return-void

    .line 74
    :cond_10
    new-instance v1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 75
    iput-boolean v3, v1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->a:Z

    .line 76
    iput-boolean v3, v1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->b:Z

    .line 77
    iput-boolean v3, v1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->e:Z

    .line 78
    new-instance v2, Lcom/nostra13/universalimageloader/core/display/NoneBitmapDisplayer;

    .line 79
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object v2, v1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->f:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    .line 81
    new-instance v2, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-direct {v2, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;-><init>(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)V

    .line 82
    iput-object v2, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->c0:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 83
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->O0:Landroid/os/Handler;

    .line 84
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    if-nez v1, :cond_11

    goto :goto_1

    .line 85
    :cond_11
    new-instance v2, Lcom/mycompany/app/image/ImageViewPageEffect$32;

    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageViewPageEffect$32;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 86
    iput-object v2, v1, Lcom/mycompany/app/main/MainActivity;->V0:Lcom/mycompany/app/main/MainActivity$SystemBarListener;

    .line 87
    :goto_1
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->j1()V

    .line 88
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_13

    .line 89
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    if-nez v1, :cond_12

    const/4 v1, 0x0

    goto :goto_2

    .line 90
    :cond_12
    invoke-virtual {v1}, Lcom/mycompany/app/main/MainActivity;->a0()Landroid/view/View;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_13

    .line 91
    new-instance v2, Lcom/mycompany/app/image/ImageViewPageEffect$1;

    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageViewPageEffect$1;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 92
    :cond_13
    new-instance v1, Lcom/mycompany/app/image/ImageViewPageEffect$EventHandler;

    invoke-direct {v1, v0}, Lcom/mycompany/app/image/ImageViewPageEffect$EventHandler;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->B:Lcom/mycompany/app/image/ImageViewPageEffect$EventHandler;

    .line 93
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    if-nez v1, :cond_14

    goto/16 :goto_4

    .line 94
    :cond_14
    new-instance v2, Lcom/mycompany/app/view/MySizeFrame;

    .line 95
    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 96
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    new-instance v9, Lcom/mycompany/app/curl/CurlView;

    .line 98
    invoke-direct {v9, v1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 99
    iput-boolean v4, v9, Lcom/mycompany/app/curl/CurlView;->g:Z

    .line 100
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, v9, Lcom/mycompany/app/curl/CurlView;->k:Landroid/graphics/RectF;

    .line 101
    iput v8, v9, Lcom/mycompany/app/curl/CurlView;->m:I

    .line 102
    iput v4, v9, Lcom/mycompany/app/curl/CurlView;->n:I

    .line 103
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6}, Landroid/graphics/PointF;-><init>()V

    iput-object v6, v9, Lcom/mycompany/app/curl/CurlView;->o:Landroid/graphics/PointF;

    .line 104
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6}, Landroid/graphics/PointF;-><init>()V

    iput-object v6, v9, Lcom/mycompany/app/curl/CurlView;->p:Landroid/graphics/PointF;

    .line 105
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6}, Landroid/graphics/PointF;-><init>()V

    iput-object v6, v9, Lcom/mycompany/app/curl/CurlView;->q:Landroid/graphics/PointF;

    .line 106
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6}, Landroid/graphics/PointF;-><init>()V

    iput-object v6, v9, Lcom/mycompany/app/curl/CurlView;->r:Landroid/graphics/PointF;

    .line 107
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6}, Landroid/graphics/PointF;-><init>()V

    iput-object v6, v9, Lcom/mycompany/app/curl/CurlView;->w:Landroid/graphics/PointF;

    .line 108
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6}, Landroid/graphics/PointF;-><init>()V

    iput-object v6, v9, Lcom/mycompany/app/curl/CurlView;->x:Landroid/graphics/PointF;

    const v6, 0x3f4ccccd    # 0.8f

    .line 109
    iput v6, v9, Lcom/mycompany/app/curl/CurlView;->A:F

    .line 110
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->O5(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 111
    sget-boolean v6, Lcom/mycompany/app/pref/PrefImage;->s:Z

    xor-int/2addr v6, v3

    iput-boolean v6, v9, Lcom/mycompany/app/curl/CurlView;->c:Z

    goto :goto_3

    .line 112
    :cond_15
    sget-boolean v6, Lcom/mycompany/app/pref/PrefImage;->s:Z

    iput-boolean v6, v9, Lcom/mycompany/app/curl/CurlView;->c:Z

    .line 113
    :goto_3
    invoke-virtual {v9, v3}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    const/16 v14, 0x10

    const/4 v15, 0x0

    const/16 v10, 0x8

    const/16 v11, 0x8

    const/16 v12, 0x8

    const/16 v13, 0x8

    .line 114
    invoke-virtual/range {v9 .. v15}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 115
    new-instance v6, Lcom/mycompany/app/curl/CurlRenderer;

    iget-boolean v7, v9, Lcom/mycompany/app/curl/CurlView;->c:Z

    invoke-direct {v6, v7, v9}, Lcom/mycompany/app/curl/CurlRenderer;-><init>(ZLcom/mycompany/app/curl/CurlView;)V

    iput-object v6, v9, Lcom/mycompany/app/curl/CurlView;->h:Lcom/mycompany/app/curl/CurlRenderer;

    .line 116
    invoke-virtual {v9, v6}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 117
    invoke-virtual {v9, v4}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 118
    invoke-virtual {v2, v9, v8, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 119
    new-instance v4, Lcom/mycompany/app/view/MyCoverView;

    sget v6, Lcom/mycompany/app/main/MainApp;->y1:I

    sget v7, Lcom/mycompany/app/main/MainApp;->z1:I

    invoke-direct {v4, v1, v8, v6, v7}, Lcom/mycompany/app/view/MyCoverView;-><init>(Landroid/content/Context;III)V

    const/16 v6, 0x8

    .line 120
    invoke-virtual {v4, v6}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 121
    invoke-virtual {v2, v4, v8, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 122
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 123
    invoke-virtual {v2, v7, v8, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 124
    new-instance v10, Lcom/mycompany/app/view/MyImageView;

    invoke-direct {v10, v1}, Lcom/mycompany/app/view/MyImageView;-><init>(Landroid/content/Context;)V

    .line 125
    invoke-virtual {v7, v10, v8, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 126
    new-instance v11, Lcom/mycompany/app/view/MyButtonImage;

    invoke-direct {v11, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 127
    sget-object v12, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 128
    sget v12, Lnet/kaki87/soul2/testing/R$drawable;->baseline_play_arrow_white_24:I

    invoke-virtual {v11, v12}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 129
    sget v12, Lcom/mycompany/app/main/MainApp;->j1:I

    int-to-float v12, v12

    sget v13, Lcom/mycompany/app/main/MainApp;->k1:I

    int-to-float v13, v13

    invoke-virtual {v11, v12, v13}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    const v12, -0x5e8a8a8b

    const/high16 v13, -0x5f000000

    .line 130
    invoke-virtual {v11, v13, v12}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 131
    invoke-virtual {v11, v6}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 132
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    invoke-direct {v12, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v14, 0x11

    .line 133
    iput v14, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 134
    invoke-virtual {v2, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    new-instance v12, Lcom/mycompany/app/view/MyCoverView;

    sget v15, Lcom/mycompany/app/main/MainApp;->y1:I

    sget v5, Lcom/mycompany/app/main/MainApp;->z1:I

    invoke-direct {v12, v1, v8, v15, v5}, Lcom/mycompany/app/view/MyCoverView;-><init>(Landroid/content/Context;III)V

    .line 136
    invoke-virtual {v12, v13}, Lcom/mycompany/app/view/MyCoverView;->setBackColor(I)V

    .line 137
    invoke-virtual {v12, v6}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 138
    invoke-virtual {v2, v12, v8, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 139
    new-instance v5, Lcom/mycompany/app/image/ImageCoverView;

    invoke-direct {v5, v1}, Lcom/mycompany/app/image/ImageCoverView;-><init>(Landroid/content/Context;)V

    .line 140
    invoke-virtual {v5, v6}, Lcom/mycompany/app/image/ImageCoverView;->setVisibility(I)V

    .line 141
    invoke-virtual {v2, v5, v8, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 142
    new-instance v13, Lcom/mycompany/app/image/ImageViewControl;

    invoke-direct {v13, v1}, Lcom/mycompany/app/image/ImageViewControl;-><init>(Landroid/content/Context;)V

    .line 143
    iget v15, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->e:I

    invoke-virtual {v13, v15}, Lcom/mycompany/app/image/ImageViewControl;->setNaviHeight(I)V

    const/4 v15, 0x4

    .line 144
    invoke-virtual {v13, v15}, Lcom/mycompany/app/image/ImageViewControl;->setVisibility(I)V

    .line 145
    invoke-virtual {v2, v13, v8, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 146
    new-instance v15, Lcom/mycompany/app/view/MyFadeLinear;

    invoke-direct {v15, v1}, Lcom/mycompany/app/view/MyFadeLinear;-><init>(Landroid/content/Context;)V

    .line 147
    sget v8, Lcom/mycompany/app/main/MainApp;->E1:I

    invoke-virtual {v15, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 148
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->round_guide_16:I

    invoke-virtual {v15, v8}, Landroid/view/View;->setBackgroundResource(I)V

    const/16 v8, 0x3e8

    .line 149
    invoke-virtual {v15, v8}, Lcom/mycompany/app/view/MyFadeLinear;->setShowTime(I)V

    const/16 v8, 0x258

    .line 150
    invoke-virtual {v15, v8}, Lcom/mycompany/app/view/MyFadeLinear;->setAnimTime(I)V

    .line 151
    invoke-virtual {v15, v3}, Lcom/mycompany/app/view/MyFadeLinear;->setAutoHide(Z)V

    .line 152
    invoke-virtual {v15, v3}, Lcom/mycompany/app/view/MyFadeLinear;->setBlocking(Z)V

    .line 153
    invoke-virtual {v15, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 154
    invoke-virtual {v15, v6}, Lcom/mycompany/app/view/MyFadeLinear;->setVisibility(I)V

    const/high16 v6, 0x43040000    # 132.0f

    .line 155
    invoke-static {v1, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    move-result v6

    float-to-int v6, v6

    .line 156
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v8, v6, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 157
    iput v14, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 158
    invoke-virtual {v2, v15, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    new-instance v6, Landroid/view/View;

    invoke-direct {v6, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v8, 0x42a80000    # 84.0f

    .line 160
    invoke-static {v1, v8}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    move-result v8

    float-to-int v8, v8

    .line 161
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v14, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v8, 0x1

    .line 162
    iput v8, v14, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 163
    invoke-virtual {v15, v6, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    new-instance v14, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v3, 0x0

    .line 165
    invoke-direct {v14, v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 166
    invoke-virtual {v14, v8}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v3, 0x41800000    # 16.0f

    .line 167
    invoke-virtual {v14, v8, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    const/4 v3, -0x1

    .line 168
    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 169
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v3, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 170
    sget v8, Lcom/mycompany/app/main/MainApp;->F1:I

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/4 v8, 0x1

    .line 171
    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 172
    invoke-virtual {v15, v14, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    new-instance v3, Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 p2, v14

    const/4 v14, 0x0

    .line 174
    invoke-direct {v3, v1, v14}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 175
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v1, 0x41800000    # 16.0f

    .line 176
    invoke-virtual {v3, v8, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    const/16 v1, -0x100

    .line 177
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 178
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x2

    invoke-direct {v1, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 179
    sget v14, Lcom/mycompany/app/main/MainApp;->F1:I

    iput v14, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 180
    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 181
    invoke-virtual {v15, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    iput-object v2, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 183
    iput-object v9, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->K:Lcom/mycompany/app/curl/CurlView;

    .line 184
    iput-object v4, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->M:Lcom/mycompany/app/view/MyCoverView;

    .line 185
    iput-object v7, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->N:Landroid/widget/FrameLayout;

    .line 186
    iput-object v10, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->O:Lcom/mycompany/app/view/MyImageView;

    .line 187
    iput-object v11, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->Q:Lcom/mycompany/app/view/MyButtonImage;

    .line 188
    iput-object v12, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->T:Lcom/mycompany/app/view/MyCoverView;

    .line 189
    iput-object v5, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->U:Lcom/mycompany/app/image/ImageCoverView;

    .line 190
    iput-object v13, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 191
    iput-object v15, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->Y:Lcom/mycompany/app/view/MyFadeLinear;

    .line 192
    iput-object v6, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->Z:Landroid/view/View;

    move-object/from16 v1, p2

    .line 193
    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->a0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 194
    iput-object v3, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->b0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 195
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 196
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->J:Lcom/mycompany/app/view/MySizeFrame;

    if-nez v1, :cond_16

    :goto_4
    return-void

    .line 197
    :cond_16
    new-instance v2, Lcom/mycompany/app/image/ImageViewPageEffect$2;

    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageViewPageEffect$2;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static N(Lcom/mycompany/app/image/ImageViewPageEffect;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->T0:Lcom/mycompany/app/image/ImageTransView;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/mycompany/app/image/ImageTransView;->g()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 15
    .line 16
    if-nez v1, :cond_2

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 24
    .line 25
    if-nez v1, :cond_3

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_3
    iget v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Lcom/mycompany/app/compress/Compress;->n(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 35
    .line 36
    invoke-virtual {v2, v1}, Lcom/mycompany/app/compress/Compress;->u(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    new-instance v2, Lcom/mycompany/app/image/ImageTransView;

    .line 41
    .line 42
    iget-object v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 43
    .line 44
    invoke-direct {v2, v3}, Lcom/mycompany/app/image/ImageTransView;-><init>(Landroid/content/Context;)V

    .line 45
    .line 46
    .line 47
    iput-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->T0:Lcom/mycompany/app/image/ImageTransView;

    .line 48
    .line 49
    iget-object v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 50
    .line 51
    new-instance v4, Lcom/mycompany/app/image/ImageViewPageEffect$62;

    .line 52
    .line 53
    invoke-direct {v4, p0}, Lcom/mycompany/app/image/ImageViewPageEffect$62;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 54
    .line 55
    .line 56
    iput-object v3, v2, Lcom/mycompany/app/image/ImageTransView;->h:Landroid/widget/FrameLayout;

    .line 57
    .line 58
    iput-object v4, v2, Lcom/mycompany/app/image/ImageTransView;->g:Lcom/mycompany/app/image/ImageTransView$ImageTransListener;

    .line 59
    .line 60
    iput v0, v2, Lcom/mycompany/app/image/ImageTransView;->o:I

    .line 61
    .line 62
    iput-boolean v1, v2, Lcom/mycompany/app/image/ImageTransView;->p:Z

    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/mycompany/app/image/ImageTransView;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    :catch_0
    :goto_0
    return-void
.end method

.method public static O(Lcom/mycompany/app/image/ImageViewPageEffect;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_6

    .line 6
    .line 7
    :cond_0
    invoke-static {v0}, Lcom/mycompany/app/data/DataUrl;->b(Landroid/content/Context;)Lcom/mycompany/app/data/DataUrl;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Lcom/mycompany/app/data/DataUrl;->b:Ljava/util/List;

    .line 12
    .line 13
    if-eqz v0, :cond_e

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    goto/16 :goto_6

    .line 22
    .line 23
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x0

    .line 28
    const/4 v3, 0x0

    .line 29
    const/4 v4, -0x1

    .line 30
    move v5, v2

    .line 31
    move-object v7, v3

    .line 32
    move v6, v4

    .line 33
    :goto_0
    if-ge v5, v1, :cond_6

    .line 34
    .line 35
    iget v8, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 36
    .line 37
    if-ne v5, v8, :cond_2

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_2
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    check-cast v8, Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v8}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v9

    .line 50
    if-nez v9, :cond_3

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_3
    if-ne v6, v4, :cond_4

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_4
    iget v9, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 57
    .line 58
    sub-int/2addr v9, v5

    .line 59
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    iget v10, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 64
    .line 65
    sub-int/2addr v10, v6

    .line 66
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    .line 67
    .line 68
    .line 69
    move-result v10

    .line 70
    if-ge v9, v10, :cond_5

    .line 71
    .line 72
    :goto_1
    move v6, v5

    .line 73
    move-object v7, v8

    .line 74
    :cond_5
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_6
    move v5, v4

    .line 78
    :goto_3
    if-ge v2, v1, :cond_c

    .line 79
    .line 80
    iget v8, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 81
    .line 82
    if-ne v2, v8, :cond_7

    .line 83
    .line 84
    goto :goto_5

    .line 85
    :cond_7
    if-ne v2, v6, :cond_8

    .line 86
    .line 87
    goto :goto_5

    .line 88
    :cond_8
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    check-cast v8, Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {v8}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result v9

    .line 98
    if-nez v9, :cond_9

    .line 99
    .line 100
    goto :goto_5

    .line 101
    :cond_9
    if-ne v5, v4, :cond_a

    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_a
    iget v9, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 105
    .line 106
    sub-int/2addr v9, v2

    .line 107
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    iget v10, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 112
    .line 113
    sub-int/2addr v10, v5

    .line 114
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    .line 115
    .line 116
    .line 117
    move-result v10

    .line 118
    if-ge v9, v10, :cond_b

    .line 119
    .line 120
    :goto_4
    move v5, v2

    .line 121
    move-object v3, v8

    .line 122
    :cond_b
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_c
    iput-object v7, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->e1:Ljava/lang/String;

    .line 126
    .line 127
    iput v6, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->f1:I

    .line 128
    .line 129
    iput-object v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->g1:Ljava/lang/String;

    .line 130
    .line 131
    iput v5, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->h1:I

    .line 132
    .line 133
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 134
    .line 135
    if-nez v0, :cond_d

    .line 136
    .line 137
    goto :goto_6

    .line 138
    :cond_d
    new-instance v1, Lcom/mycompany/app/image/ImageViewPageEffect$27;

    .line 139
    .line 140
    invoke-direct {v1, p0}, Lcom/mycompany/app/image/ImageViewPageEffect$27;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 144
    .line 145
    .line 146
    :cond_e
    :goto_6
    return-void
.end method

.method public static P(Lcom/mycompany/app/image/ImageViewPageEffect;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_c

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/mycompany/app/compress/Compress;->R()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    goto/16 :goto_5

    .line 14
    .line 15
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/compress/Compress;->R()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    iput v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 20
    .line 21
    iget v4, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 22
    .line 23
    const/4 v5, 0x1

    .line 24
    if-ltz v4, :cond_2

    .line 25
    .line 26
    add-int/lit8 v6, v3, -0x1

    .line 27
    .line 28
    if-gt v4, v6, :cond_2

    .line 29
    .line 30
    iget v6, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 31
    .line 32
    if-nez v6, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move v4, v2

    .line 36
    goto :goto_3

    .line 37
    :cond_2
    :goto_0
    const/4 v6, -0x1

    .line 38
    if-ne v4, v6, :cond_3

    .line 39
    .line 40
    move v4, v5

    .line 41
    goto :goto_1

    .line 42
    :cond_3
    move v4, v2

    .line 43
    :goto_1
    if-eqz v4, :cond_4

    .line 44
    .line 45
    sub-int/2addr v3, v5

    .line 46
    goto :goto_2

    .line 47
    :cond_4
    move v3, v2

    .line 48
    :goto_2
    iput v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 49
    .line 50
    iput v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 51
    .line 52
    :goto_3
    iget-object v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 53
    .line 54
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->H5(Lcom/mycompany/app/main/MainActivity;)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-nez v3, :cond_5

    .line 59
    .line 60
    iput v5, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 61
    .line 62
    return-void

    .line 63
    :cond_5
    iget v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    .line 64
    .line 65
    const/16 v6, 0xc

    .line 66
    .line 67
    if-eq v3, v6, :cond_8

    .line 68
    .line 69
    iget v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 70
    .line 71
    if-lez v3, :cond_8

    .line 72
    .line 73
    new-instance v3, Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 74
    .line 75
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 76
    .line 77
    .line 78
    const/16 v7, 0x8

    .line 79
    .line 80
    iput v7, v3, Lcom/mycompany/app/main/MainItem$ViewItem;->a:I

    .line 81
    .line 82
    iput-object v0, v3, Lcom/mycompany/app/main/MainItem$ViewItem;->b:Lcom/mycompany/app/compress/Compress;

    .line 83
    .line 84
    iget-object v7, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->m:Ljava/lang/String;

    .line 85
    .line 86
    iput-object v7, v3, Lcom/mycompany/app/main/MainItem$ViewItem;->r:Ljava/lang/String;

    .line 87
    .line 88
    iget-object v7, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->Q0()Z

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    iget v9, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    .line 95
    .line 96
    if-ne v9, v1, :cond_6

    .line 97
    .line 98
    move v1, v5

    .line 99
    goto :goto_4

    .line 100
    :cond_6
    move v1, v2

    .line 101
    :goto_4
    invoke-static {v7, v8, v1}, Lcom/mycompany/app/main/MainUtil;->l0(Landroid/content/Context;ZZ)I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    iput v1, v3, Lcom/mycompany/app/main/MainItem$ViewItem;->t:I

    .line 106
    .line 107
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    .line 108
    .line 109
    if-ne v1, v6, :cond_7

    .line 110
    .line 111
    move v2, v5

    .line 112
    :cond_7
    iput-boolean v2, v3, Lcom/mycompany/app/main/MainItem$ViewItem;->u:Z

    .line 113
    .line 114
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 115
    .line 116
    iput v1, v3, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Lcom/mycompany/app/compress/Compress;->g(I)Lcom/mycompany/app/compress/CompressCache$BitmapInfo;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    if-nez v0, :cond_8

    .line 123
    .line 124
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c0:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 129
    .line 130
    invoke-virtual {v0, v3, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->k(Lcom/mycompany/app/main/MainItem$ViewItem;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/ImageLoader$ImageLoadItem;

    .line 131
    .line 132
    .line 133
    :cond_8
    iget v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 134
    .line 135
    if-eqz v0, :cond_9

    .line 136
    .line 137
    if-ne v0, v5, :cond_b

    .line 138
    .line 139
    :cond_9
    iget v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 140
    .line 141
    invoke-virtual {p0, v0, v5}, Lcom/mycompany/app/image/ImageViewPageEffect;->p0(IZ)I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    iput v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 146
    .line 147
    if-eqz v4, :cond_b

    .line 148
    .line 149
    const/4 v1, 0x4

    .line 150
    const/4 v2, 0x3

    .line 151
    if-ne v0, v2, :cond_a

    .line 152
    .line 153
    iput v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 154
    .line 155
    return-void

    .line 156
    :cond_a
    if-ne v0, v1, :cond_b

    .line 157
    .line 158
    iput v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 159
    .line 160
    :cond_b
    return-void

    .line 161
    :cond_c
    :goto_5
    iput v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 162
    .line 163
    iput v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 164
    .line 165
    iput v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 166
    .line 167
    return-void
.end method

.method public static Q(Lcom/mycompany/app/image/ImageViewPageEffect;Lcom/mycompany/app/curl/CurlMesh;I)Lcom/mycompany/app/main/MainItem$ViewItem;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    :catch_0
    const/16 v16, 0x0

    .line 10
    .line 11
    goto/16 :goto_23

    .line 12
    .line 13
    :cond_0
    :try_start_0
    iget-object v4, v1, Lcom/mycompany/app/curl/CurlMesh;->C:Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 14
    .line 15
    if-eqz v4, :cond_1

    .line 16
    .line 17
    iget-boolean v5, v4, Lcom/mycompany/app/main/MainItem$ViewItem;->m:Z

    .line 18
    .line 19
    if-eqz v5, :cond_1

    .line 20
    .line 21
    iput v2, v4, Lcom/mycompany/app/main/MainItem$ViewItem;->e:I

    .line 22
    .line 23
    invoke-virtual {v0, v4}, Lcom/mycompany/app/image/ImageViewPageEffect;->V0(Lcom/mycompany/app/main/MainItem$ViewItem;)V

    .line 24
    .line 25
    .line 26
    return-object v4

    .line 27
    :cond_1
    iget v4, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 28
    .line 29
    iget v5, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 30
    .line 31
    const/4 v6, 0x3

    .line 32
    const/4 v7, 0x2

    .line 33
    const/4 v8, 0x0

    .line 34
    const/4 v9, 0x1

    .line 35
    if-lez v5, :cond_25

    .line 36
    .line 37
    iget v5, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->k0:I

    .line 38
    .line 39
    const/4 v10, 0x4

    .line 40
    if-ne v2, v5, :cond_b

    .line 41
    .line 42
    iget v5, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 43
    .line 44
    iget-object v11, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 45
    .line 46
    invoke-static {v11}, Lcom/mycompany/app/main/MainUtil;->H5(Lcom/mycompany/app/main/MainActivity;)Z

    .line 47
    .line 48
    .line 49
    move-result v11

    .line 50
    if-nez v11, :cond_2

    .line 51
    .line 52
    move v5, v8

    .line 53
    move v11, v5

    .line 54
    :goto_0
    move v12, v11

    .line 55
    move v10, v9

    .line 56
    :goto_1
    const/4 v13, 0x0

    .line 57
    goto/16 :goto_1c

    .line 58
    .line 59
    :cond_2
    if-eqz v5, :cond_4

    .line 60
    .line 61
    if-ne v5, v9, :cond_3

    .line 62
    .line 63
    goto :goto_4

    .line 64
    :cond_3
    move v10, v5

    .line 65
    :goto_2
    move v5, v8

    .line 66
    move v11, v5

    .line 67
    :goto_3
    move v12, v11

    .line 68
    goto :goto_1

    .line 69
    :cond_4
    :goto_4
    iget v11, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->A:I

    .line 70
    .line 71
    if-eqz v11, :cond_5

    .line 72
    .line 73
    iput v8, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->A:I

    .line 74
    .line 75
    move v10, v5

    .line 76
    move v5, v8

    .line 77
    move v12, v5

    .line 78
    goto :goto_1

    .line 79
    :cond_5
    iget-object v11, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 80
    .line 81
    if-eqz v11, :cond_6

    .line 82
    .line 83
    invoke-virtual {v11, v4}, Lcom/mycompany/app/compress/Compress;->g(I)Lcom/mycompany/app/compress/CompressCache$BitmapInfo;

    .line 84
    .line 85
    .line 86
    move-result-object v11

    .line 87
    goto :goto_5

    .line 88
    :cond_6
    const/4 v11, 0x0

    .line 89
    :goto_5
    if-eqz v11, :cond_9

    .line 90
    .line 91
    iget v5, v11, Lcom/mycompany/app/compress/CompressCache$BitmapInfo;->a:I

    .line 92
    .line 93
    iget v12, v11, Lcom/mycompany/app/compress/CompressCache$BitmapInfo;->b:I

    .line 94
    .line 95
    if-le v5, v12, :cond_8

    .line 96
    .line 97
    iget-boolean v5, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->f:Z

    .line 98
    .line 99
    if-eqz v5, :cond_7

    .line 100
    .line 101
    :goto_6
    move v5, v8

    .line 102
    move v12, v5

    .line 103
    :goto_7
    move-object v13, v11

    .line 104
    move v11, v12

    .line 105
    goto/16 :goto_1c

    .line 106
    .line 107
    :cond_7
    move v10, v6

    .line 108
    goto :goto_6

    .line 109
    :cond_8
    move v10, v7

    .line 110
    goto :goto_6

    .line 111
    :cond_9
    iget-boolean v12, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->f:Z

    .line 112
    .line 113
    if-eqz v12, :cond_a

    .line 114
    .line 115
    move v12, v8

    .line 116
    move-object v13, v11

    .line 117
    move v11, v10

    .line 118
    move v10, v5

    .line 119
    move v5, v12

    .line 120
    goto/16 :goto_1c

    .line 121
    .line 122
    :cond_a
    move v10, v5

    .line 123
    move v5, v8

    .line 124
    move v12, v5

    .line 125
    :goto_8
    move-object v13, v11

    .line 126
    move v11, v6

    .line 127
    goto/16 :goto_1c

    .line 128
    .line 129
    :cond_b
    if-ge v2, v5, :cond_18

    .line 130
    .line 131
    iget-object v5, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 132
    .line 133
    invoke-static {v5}, Lcom/mycompany/app/main/MainUtil;->H5(Lcom/mycompany/app/main/MainActivity;)Z

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    if-nez v5, :cond_f

    .line 138
    .line 139
    iget-boolean v4, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->f:Z

    .line 140
    .line 141
    if-eqz v4, :cond_d

    .line 142
    .line 143
    iget v4, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 144
    .line 145
    iget v5, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 146
    .line 147
    sub-int/2addr v5, v9

    .line 148
    if-ne v4, v5, :cond_c

    .line 149
    .line 150
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->R0()Z

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    if-eqz v4, :cond_c

    .line 155
    .line 156
    move v4, v9

    .line 157
    goto :goto_9

    .line 158
    :cond_c
    move v4, v8

    .line 159
    :goto_9
    iget v5, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 160
    .line 161
    add-int/2addr v5, v9

    .line 162
    iget v10, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 163
    .line 164
    rem-int/2addr v5, v10

    .line 165
    :goto_a
    move/from16 v17, v5

    .line 166
    .line 167
    move v5, v4

    .line 168
    move/from16 v4, v17

    .line 169
    .line 170
    goto :goto_c

    .line 171
    :cond_d
    iget v4, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 172
    .line 173
    if-nez v4, :cond_e

    .line 174
    .line 175
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->R0()Z

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    if-eqz v4, :cond_e

    .line 180
    .line 181
    move v4, v9

    .line 182
    goto :goto_b

    .line 183
    :cond_e
    move v4, v8

    .line 184
    :goto_b
    iget v5, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 185
    .line 186
    iget v10, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 187
    .line 188
    invoke-static {v5, v10, v9, v10}, Landroid/support/v4/media/a;->B(IIII)I

    .line 189
    .line 190
    .line 191
    move-result v5

    .line 192
    goto :goto_a

    .line 193
    :goto_c
    move v11, v8

    .line 194
    goto/16 :goto_0

    .line 195
    .line 196
    :cond_f
    iget v5, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 197
    .line 198
    if-ne v5, v10, :cond_10

    .line 199
    .line 200
    move v10, v6

    .line 201
    goto/16 :goto_2

    .line 202
    .line 203
    :cond_10
    iget-boolean v4, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->f:Z

    .line 204
    .line 205
    if-eqz v4, :cond_12

    .line 206
    .line 207
    iget v4, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 208
    .line 209
    iget v5, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 210
    .line 211
    sub-int/2addr v5, v9

    .line 212
    if-ne v4, v5, :cond_11

    .line 213
    .line 214
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->R0()Z

    .line 215
    .line 216
    .line 217
    move-result v4

    .line 218
    if-eqz v4, :cond_11

    .line 219
    .line 220
    move v4, v9

    .line 221
    goto :goto_d

    .line 222
    :cond_11
    move v4, v8

    .line 223
    :goto_d
    iget v5, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 224
    .line 225
    add-int/2addr v5, v9

    .line 226
    iget v11, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 227
    .line 228
    rem-int/2addr v5, v11

    .line 229
    :goto_e
    move/from16 v17, v5

    .line 230
    .line 231
    move v5, v4

    .line 232
    move/from16 v4, v17

    .line 233
    .line 234
    goto :goto_10

    .line 235
    :cond_12
    iget v4, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 236
    .line 237
    if-nez v4, :cond_13

    .line 238
    .line 239
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->R0()Z

    .line 240
    .line 241
    .line 242
    move-result v4

    .line 243
    if-eqz v4, :cond_13

    .line 244
    .line 245
    move v4, v9

    .line 246
    goto :goto_f

    .line 247
    :cond_13
    move v4, v8

    .line 248
    :goto_f
    iget v5, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 249
    .line 250
    iget v11, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 251
    .line 252
    invoke-static {v5, v11, v9, v11}, Landroid/support/v4/media/a;->B(IIII)I

    .line 253
    .line 254
    .line 255
    move-result v5

    .line 256
    goto :goto_e

    .line 257
    :goto_10
    if-eqz v5, :cond_14

    .line 258
    .line 259
    :goto_11
    move v10, v7

    .line 260
    move v11, v8

    .line 261
    goto/16 :goto_3

    .line 262
    .line 263
    :cond_14
    iget-object v11, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 264
    .line 265
    if-eqz v11, :cond_15

    .line 266
    .line 267
    invoke-virtual {v11, v4}, Lcom/mycompany/app/compress/Compress;->g(I)Lcom/mycompany/app/compress/CompressCache$BitmapInfo;

    .line 268
    .line 269
    .line 270
    move-result-object v11

    .line 271
    goto :goto_12

    .line 272
    :cond_15
    const/4 v11, 0x0

    .line 273
    :goto_12
    if-eqz v11, :cond_17

    .line 274
    .line 275
    iget v12, v11, Lcom/mycompany/app/compress/CompressCache$BitmapInfo;->a:I

    .line 276
    .line 277
    iget v13, v11, Lcom/mycompany/app/compress/CompressCache$BitmapInfo;->b:I

    .line 278
    .line 279
    if-le v12, v13, :cond_16

    .line 280
    .line 281
    :goto_13
    move v12, v8

    .line 282
    goto/16 :goto_7

    .line 283
    .line 284
    :cond_16
    move v10, v7

    .line 285
    goto :goto_13

    .line 286
    :cond_17
    move v12, v8

    .line 287
    move-object v13, v11

    .line 288
    move v11, v10

    .line 289
    move v10, v12

    .line 290
    goto/16 :goto_1c

    .line 291
    .line 292
    :cond_18
    if-le v2, v5, :cond_24

    .line 293
    .line 294
    iget-object v5, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 295
    .line 296
    invoke-static {v5}, Lcom/mycompany/app/main/MainUtil;->H5(Lcom/mycompany/app/main/MainActivity;)Z

    .line 297
    .line 298
    .line 299
    move-result v5

    .line 300
    if-nez v5, :cond_1c

    .line 301
    .line 302
    iget-boolean v4, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->f:Z

    .line 303
    .line 304
    if-eqz v4, :cond_1a

    .line 305
    .line 306
    iget v4, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 307
    .line 308
    if-nez v4, :cond_19

    .line 309
    .line 310
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->R0()Z

    .line 311
    .line 312
    .line 313
    move-result v4

    .line 314
    if-eqz v4, :cond_19

    .line 315
    .line 316
    move v4, v9

    .line 317
    goto :goto_14

    .line 318
    :cond_19
    move v4, v8

    .line 319
    :goto_14
    iget v5, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 320
    .line 321
    iget v10, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 322
    .line 323
    invoke-static {v5, v10, v9, v10}, Landroid/support/v4/media/a;->B(IIII)I

    .line 324
    .line 325
    .line 326
    move-result v5

    .line 327
    goto/16 :goto_a

    .line 328
    .line 329
    :cond_1a
    iget v4, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 330
    .line 331
    iget v5, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 332
    .line 333
    sub-int/2addr v5, v9

    .line 334
    if-ne v4, v5, :cond_1b

    .line 335
    .line 336
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->R0()Z

    .line 337
    .line 338
    .line 339
    move-result v4

    .line 340
    if-eqz v4, :cond_1b

    .line 341
    .line 342
    move v4, v9

    .line 343
    goto :goto_15

    .line 344
    :cond_1b
    move v4, v8

    .line 345
    :goto_15
    iget v5, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 346
    .line 347
    add-int/2addr v5, v9

    .line 348
    iget v10, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 349
    .line 350
    rem-int/2addr v5, v10

    .line 351
    goto/16 :goto_a

    .line 352
    .line 353
    :cond_1c
    iget v5, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 354
    .line 355
    if-ne v5, v6, :cond_1d

    .line 356
    .line 357
    goto/16 :goto_2

    .line 358
    .line 359
    :cond_1d
    iget-boolean v4, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->f:Z

    .line 360
    .line 361
    if-eqz v4, :cond_1f

    .line 362
    .line 363
    iget v4, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 364
    .line 365
    if-nez v4, :cond_1e

    .line 366
    .line 367
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->R0()Z

    .line 368
    .line 369
    .line 370
    move-result v4

    .line 371
    if-eqz v4, :cond_1e

    .line 372
    .line 373
    move v4, v9

    .line 374
    goto :goto_16

    .line 375
    :cond_1e
    move v4, v8

    .line 376
    :goto_16
    iget v5, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 377
    .line 378
    iget v10, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 379
    .line 380
    invoke-static {v5, v10, v9, v10}, Landroid/support/v4/media/a;->B(IIII)I

    .line 381
    .line 382
    .line 383
    move-result v5

    .line 384
    :goto_17
    move/from16 v17, v5

    .line 385
    .line 386
    move v5, v4

    .line 387
    move/from16 v4, v17

    .line 388
    .line 389
    goto :goto_19

    .line 390
    :cond_1f
    iget v4, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 391
    .line 392
    iget v5, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 393
    .line 394
    sub-int/2addr v5, v9

    .line 395
    if-ne v4, v5, :cond_20

    .line 396
    .line 397
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->R0()Z

    .line 398
    .line 399
    .line 400
    move-result v4

    .line 401
    if-eqz v4, :cond_20

    .line 402
    .line 403
    move v4, v9

    .line 404
    goto :goto_18

    .line 405
    :cond_20
    move v4, v8

    .line 406
    :goto_18
    iget v5, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 407
    .line 408
    add-int/2addr v5, v9

    .line 409
    iget v10, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 410
    .line 411
    rem-int/2addr v5, v10

    .line 412
    goto :goto_17

    .line 413
    :goto_19
    if-eqz v5, :cond_21

    .line 414
    .line 415
    goto/16 :goto_11

    .line 416
    .line 417
    :cond_21
    iget-object v10, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 418
    .line 419
    if-eqz v10, :cond_22

    .line 420
    .line 421
    invoke-virtual {v10, v4}, Lcom/mycompany/app/compress/Compress;->g(I)Lcom/mycompany/app/compress/CompressCache$BitmapInfo;

    .line 422
    .line 423
    .line 424
    move-result-object v10

    .line 425
    move-object v11, v10

    .line 426
    goto :goto_1a

    .line 427
    :cond_22
    const/4 v11, 0x0

    .line 428
    :goto_1a
    if-eqz v11, :cond_23

    .line 429
    .line 430
    iget v10, v11, Lcom/mycompany/app/compress/CompressCache$BitmapInfo;->a:I

    .line 431
    .line 432
    iget v12, v11, Lcom/mycompany/app/compress/CompressCache$BitmapInfo;->b:I

    .line 433
    .line 434
    if-le v10, v12, :cond_16

    .line 435
    .line 436
    move v10, v6

    .line 437
    goto/16 :goto_13

    .line 438
    .line 439
    :cond_23
    move v10, v8

    .line 440
    move v12, v10

    .line 441
    goto/16 :goto_8

    .line 442
    .line 443
    :cond_24
    move v5, v8

    .line 444
    move v10, v5

    .line 445
    move v11, v10

    .line 446
    goto/16 :goto_3

    .line 447
    .line 448
    :cond_25
    iget v5, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->k0:I

    .line 449
    .line 450
    if-eq v2, v5, :cond_26

    .line 451
    .line 452
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->R0()Z

    .line 453
    .line 454
    .line 455
    move-result v5

    .line 456
    if-eqz v5, :cond_26

    .line 457
    .line 458
    move v10, v8

    .line 459
    move v5, v9

    .line 460
    goto :goto_1b

    .line 461
    :cond_26
    move v5, v8

    .line 462
    move v10, v9

    .line 463
    :goto_1b
    move v11, v8

    .line 464
    move v12, v10

    .line 465
    const/4 v13, 0x0

    .line 466
    move v10, v7

    .line 467
    :goto_1c
    new-instance v14, Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 468
    .line 469
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 470
    .line 471
    .line 472
    const/16 v15, 0x8

    .line 473
    .line 474
    iput v15, v14, Lcom/mycompany/app/main/MainItem$ViewItem;->a:I

    .line 475
    .line 476
    iget-object v15, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 477
    .line 478
    iput-object v15, v14, Lcom/mycompany/app/main/MainItem$ViewItem;->b:Lcom/mycompany/app/compress/Compress;

    .line 479
    .line 480
    iget-object v15, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->m:Ljava/lang/String;

    .line 481
    .line 482
    iput-object v15, v14, Lcom/mycompany/app/main/MainItem$ViewItem;->r:Ljava/lang/String;

    .line 483
    .line 484
    iput-object v1, v14, Lcom/mycompany/app/main/MainItem$ViewItem;->c:Lcom/mycompany/app/curl/CurlMesh;

    .line 485
    .line 486
    new-instance v15, Lcom/mycompany/app/view/MyImageView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    .line 488
    const/16 v16, 0x0

    .line 489
    .line 490
    :try_start_1
    iget-object v3, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 491
    .line 492
    invoke-direct {v15, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 493
    .line 494
    .line 495
    iput-object v3, v15, Lcom/mycompany/app/view/MyImageView;->c:Landroid/content/Context;

    .line 496
    .line 497
    iput-object v15, v14, Lcom/mycompany/app/main/MainItem$ViewItem;->d:Lcom/mycompany/app/view/MyImageView;

    .line 498
    .line 499
    iput v2, v14, Lcom/mycompany/app/main/MainItem$ViewItem;->e:I

    .line 500
    .line 501
    iput v4, v14, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 502
    .line 503
    iput v10, v14, Lcom/mycompany/app/main/MainItem$ViewItem;->g:I

    .line 504
    .line 505
    iput v11, v14, Lcom/mycompany/app/main/MainItem$ViewItem;->h:I

    .line 506
    .line 507
    iput-object v13, v14, Lcom/mycompany/app/main/MainItem$ViewItem;->i:Lcom/mycompany/app/compress/CompressCache$BitmapInfo;

    .line 508
    .line 509
    iput-boolean v5, v14, Lcom/mycompany/app/main/MainItem$ViewItem;->j:Z

    .line 510
    .line 511
    if-eqz v5, :cond_28

    .line 512
    .line 513
    iget-object v3, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 514
    .line 515
    iget v4, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->k0:I

    .line 516
    .line 517
    if-le v2, v4, :cond_27

    .line 518
    .line 519
    move v2, v9

    .line 520
    goto :goto_1d

    .line 521
    :cond_27
    move v2, v8

    .line 522
    :goto_1d
    invoke-virtual {v0, v3, v2}, Lcom/mycompany/app/image/ImageViewPageEffect;->l0(Ljava/lang/String;Z)Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v2

    .line 526
    goto :goto_1e

    .line 527
    :cond_28
    move-object/from16 v2, v16

    .line 528
    .line 529
    :goto_1e
    iput-object v2, v14, Lcom/mycompany/app/main/MainItem$ViewItem;->k:Ljava/lang/String;

    .line 530
    .line 531
    iput-boolean v12, v14, Lcom/mycompany/app/main/MainItem$ViewItem;->l:Z

    .line 532
    .line 533
    if-nez v5, :cond_29

    .line 534
    .line 535
    if-nez v12, :cond_29

    .line 536
    .line 537
    move v2, v9

    .line 538
    goto :goto_1f

    .line 539
    :cond_29
    move v2, v8

    .line 540
    :goto_1f
    iput-boolean v2, v14, Lcom/mycompany/app/main/MainItem$ViewItem;->n:Z

    .line 541
    .line 542
    iget v2, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    .line 543
    .line 544
    if-eq v2, v9, :cond_2b

    .line 545
    .line 546
    if-eq v2, v7, :cond_2b

    .line 547
    .line 548
    if-ne v2, v6, :cond_2a

    .line 549
    .line 550
    goto :goto_20

    .line 551
    :cond_2a
    move-object/from16 v2, v16

    .line 552
    .line 553
    goto :goto_21

    .line 554
    :cond_2b
    :goto_20
    iget-object v2, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 555
    .line 556
    :goto_21
    iput-object v2, v14, Lcom/mycompany/app/main/MainItem$ViewItem;->v:Ljava/lang/String;

    .line 557
    .line 558
    iget-object v2, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 559
    .line 560
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->Q0()Z

    .line 561
    .line 562
    .line 563
    move-result v3

    .line 564
    iget v4, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    .line 565
    .line 566
    if-ne v4, v7, :cond_2c

    .line 567
    .line 568
    move v4, v9

    .line 569
    goto :goto_22

    .line 570
    :cond_2c
    move v4, v8

    .line 571
    :goto_22
    invoke-static {v2, v3, v4}, Lcom/mycompany/app/main/MainUtil;->l0(Landroid/content/Context;ZZ)I

    .line 572
    .line 573
    .line 574
    move-result v2

    .line 575
    iput v2, v14, Lcom/mycompany/app/main/MainItem$ViewItem;->t:I

    .line 576
    .line 577
    iget v2, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    .line 578
    .line 579
    const/16 v3, 0xc

    .line 580
    .line 581
    if-ne v2, v3, :cond_2d

    .line 582
    .line 583
    move v8, v9

    .line 584
    :cond_2d
    iput-boolean v8, v14, Lcom/mycompany/app/main/MainItem$ViewItem;->u:Z

    .line 585
    .line 586
    iput-object v14, v1, Lcom/mycompany/app/curl/CurlMesh;->C:Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 587
    .line 588
    invoke-virtual {v0, v14}, Lcom/mycompany/app/image/ImageViewPageEffect;->V0(Lcom/mycompany/app/main/MainItem$ViewItem;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 589
    .line 590
    .line 591
    return-object v14

    .line 592
    :catch_1
    :goto_23
    return-object v16
.end method

.method public static R(Lcom/mycompany/app/image/ImageViewPageEffect;ZZ)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->f0:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->Q0()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    sget v1, Lcom/mycompany/app/pref/PrefImage;->u:I

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget v1, Lcom/mycompany/app/pref/PrefImage;->t:I

    .line 14
    .line 15
    :goto_0
    const/4 v2, 0x1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    move v1, v2

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move v1, v0

    .line 21
    :goto_1
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0, v2}, Lcom/mycompany/app/image/ImageViewPageEffect;->h0(Z)Z

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_2
    iget-boolean v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->I:Z

    .line 28
    .line 29
    if-nez v1, :cond_3

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    iput-object v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->o:Ljava/util/ArrayList;

    .line 33
    .line 34
    :cond_3
    const/16 v3, 0xc

    .line 35
    .line 36
    if-eqz p1, :cond_4

    .line 37
    .line 38
    iget p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    .line 39
    .line 40
    if-ne p1, v3, :cond_7

    .line 41
    .line 42
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 43
    .line 44
    invoke-static {p1}, Lcom/mycompany/app/data/DataUrl;->b(Landroid/content/Context;)Lcom/mycompany/app/data/DataUrl;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lcom/mycompany/app/data/DataUrl;->a()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    iget p2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 53
    .line 54
    if-le p1, p2, :cond_7

    .line 55
    .line 56
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 57
    .line 58
    invoke-static {p1}, Lcom/mycompany/app/data/DataUrl;->b(Landroid/content/Context;)Lcom/mycompany/app/data/DataUrl;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Lcom/mycompany/app/data/DataUrl;->a()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    iget p2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 67
    .line 68
    sub-int/2addr p1, p2

    .line 69
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 70
    .line 71
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 72
    .line 73
    sget v3, Lnet/kaki87/soul2/testing/R$string;->filtered_image:I

    .line 74
    .line 75
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    new-array v3, v2, [Ljava/lang/Object;

    .line 84
    .line 85
    aput-object p1, v3, v0

    .line 86
    .line 87
    invoke-static {p2, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    iget-object p2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 92
    .line 93
    invoke-static {p2, p1}, Lcom/mycompany/app/main/MainUtil;->f8(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_4
    if-eqz p2, :cond_5

    .line 98
    .line 99
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 100
    .line 101
    sget p2, Lnet/kaki87/soul2/testing/R$string;->invalid_password:I

    .line 102
    .line 103
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_5
    if-nez v1, :cond_7

    .line 108
    .line 109
    iget p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    .line 110
    .line 111
    if-ne p1, v3, :cond_6

    .line 112
    .line 113
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 114
    .line 115
    invoke-static {p1}, Lcom/mycompany/app/data/DataUrl;->b(Landroid/content/Context;)Lcom/mycompany/app/data/DataUrl;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p1}, Lcom/mycompany/app/data/DataUrl;->a()I

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    iget p2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 124
    .line 125
    if-le p1, p2, :cond_6

    .line 126
    .line 127
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 128
    .line 129
    invoke-static {p1}, Lcom/mycompany/app/data/DataUrl;->b(Landroid/content/Context;)Lcom/mycompany/app/data/DataUrl;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p1}, Lcom/mycompany/app/data/DataUrl;->a()I

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    iget p2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 138
    .line 139
    sub-int/2addr p1, p2

    .line 140
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 141
    .line 142
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 143
    .line 144
    sget v3, Lnet/kaki87/soul2/testing/R$string;->filtered_image:I

    .line 145
    .line 146
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    new-array v3, v2, [Ljava/lang/Object;

    .line 155
    .line 156
    aput-object p1, v3, v0

    .line 157
    .line 158
    invoke-static {p2, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    iget-object p2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 163
    .line 164
    invoke-static {p2, p1}, Lcom/mycompany/app/main/MainUtil;->f8(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 165
    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_6
    iget p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 169
    .line 170
    if-nez p1, :cond_7

    .line 171
    .line 172
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 173
    .line 174
    sget p2, Lnet/kaki87/soul2/testing/R$string;->no_image:I

    .line 175
    .line 176
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 177
    .line 178
    .line 179
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 180
    .line 181
    if-eqz p1, :cond_8

    .line 182
    .line 183
    iget p2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 184
    .line 185
    iget v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 186
    .line 187
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 188
    .line 189
    invoke-virtual {p1, p2, v0, v1}, Lcom/mycompany/app/image/ImageViewControl;->t(III)V

    .line 190
    .line 191
    .line 192
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 193
    .line 194
    iget p2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    .line 195
    .line 196
    iget v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->p:I

    .line 197
    .line 198
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 199
    .line 200
    invoke-virtual {p1, p2, v0, v1}, Lcom/mycompany/app/image/ImageViewControl;->p(IILcom/mycompany/app/compress/Compress;)V

    .line 201
    .line 202
    .line 203
    :cond_8
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->Y0()V

    .line 204
    .line 205
    .line 206
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->T:Lcom/mycompany/app/view/MyCoverView;

    .line 207
    .line 208
    if-eqz p1, :cond_9

    .line 209
    .line 210
    invoke-virtual {p1, v2}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 211
    .line 212
    .line 213
    :cond_9
    iput-boolean v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->e0:Z

    .line 214
    .line 215
    sget-boolean p1, Lcom/mycompany/app/pref/PrefZone;->n0:Z

    .line 216
    .line 217
    if-nez p1, :cond_a

    .line 218
    .line 219
    goto :goto_3

    .line 220
    :cond_a
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 221
    .line 222
    if-nez p1, :cond_b

    .line 223
    .line 224
    :goto_3
    return-void

    .line 225
    :cond_b
    new-instance p2, Lcom/mycompany/app/image/ImageViewPageEffect$20;

    .line 226
    .line 227
    invoke-direct {p2, p0}, Lcom/mycompany/app/image/ImageViewPageEffect$20;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 231
    .line 232
    .line 233
    return-void
.end method

.method public static S(Lcom/mycompany/app/image/ImageViewPageEffect;ILjava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/mycompany/app/compress/Compress;->T(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->K:Lcom/mycompany/app/curl/CurlView;

    .line 9
    .line 10
    if-nez p2, :cond_1

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Lcom/mycompany/app/curl/CurlView;->getPageList()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const/4 v0, 0x0

    .line 18
    if-eqz p2, :cond_2

    .line 19
    .line 20
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    goto :goto_0

    .line 25
    :cond_2
    move v1, v0

    .line 26
    :goto_0
    if-ge v0, v1, :cond_7

    .line 27
    .line 28
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lcom/mycompany/app/curl/CurlMesh;

    .line 33
    .line 34
    if-nez v2, :cond_3

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_3
    iget-object v2, v2, Lcom/mycompany/app/curl/CurlMesh;->C:Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 38
    .line 39
    if-nez v2, :cond_4

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_4
    iget v3, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 43
    .line 44
    if-ne p1, v3, :cond_6

    .line 45
    .line 46
    invoke-virtual {p0, v2}, Lcom/mycompany/app/image/ImageViewPageEffect;->V0(Lcom/mycompany/app/main/MainItem$ViewItem;)V

    .line 47
    .line 48
    .line 49
    iget-object p2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 50
    .line 51
    if-eqz p2, :cond_5

    .line 52
    .line 53
    invoke-virtual {p2, p1}, Lcom/mycompany/app/image/ImageViewControl;->setPathChanged(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    :cond_5
    :goto_1
    return-void

    .line 57
    :cond_6
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catch_0
    :cond_7
    iget-object p2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 61
    .line 62
    if-eqz p2, :cond_8

    .line 63
    .line 64
    invoke-virtual {p2, p1}, Lcom/mycompany/app/image/ImageViewControl;->setPathChanged(I)V

    .line 65
    .line 66
    .line 67
    :cond_8
    invoke-virtual {p0, p1}, Lcom/mycompany/app/image/ImageViewPageEffect;->c0(I)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public static T(Lcom/mycompany/app/image/ImageViewPageEffect;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_1

    .line 6
    .line 7
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->u:Ljava/lang/String;

    iget v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0_title

    iget-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    if-eqz v2, :cond_0_title

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0_title

    const-string v3, "EXTRA_NAME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0_title

    move-object v1, v2

    :cond_0_title
    iget v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_title_ready

    iget-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mycompany/app/image/PdfPreviewToolbar;->formatHeaderTitle(Lcom/mycompany/app/image/ImageViewControl;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->u:Ljava/lang/String;

    :cond_title_ready
    invoke-virtual {v0, v1}, Lcom/mycompany/app/image/ImageViewControl;->setTitle(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 13
    .line 14
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 15
    .line 16
    iget v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 17
    .line 18
    iget v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2, v3}, Lcom/mycompany/app/image/ImageViewControl;->t(III)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/mycompany/app/compress/Compress;->n(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Lcom/mycompany/app/compress/Compress;->u(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->T0:Lcom/mycompany/app/image/ImageTransView;

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Lcom/mycompany/app/image/ImageTransView;->setIconTrans(Z)V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 47
    .line 48
    invoke-virtual {v1, v0}, Lcom/mycompany/app/image/ImageViewControl;->y(Z)V

    .line 49
    .line 50
    .line 51
    :cond_2
    iget v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->W:I

    .line 52
    .line 53
    const/4 v1, -0x1

    .line 54
    if-le v0, v1, :cond_5

    .line 55
    .line 56
    iget v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->X:I

    .line 57
    .line 58
    if-le v0, v1, :cond_5

    .line 59
    .line 60
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->K:Lcom/mycompany/app/curl/CurlView;

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->K:Lcom/mycompany/app/curl/CurlView;

    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    iget v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 73
    .line 74
    const/4 v1, 0x3

    .line 75
    if-eq v0, v1, :cond_3

    .line 76
    .line 77
    const/4 v1, 0x4

    .line 78
    if-ne v0, v1, :cond_4

    .line 79
    .line 80
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 81
    .line 82
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->H5(Lcom/mycompany/app/main/MainActivity;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_4

    .line 87
    .line 88
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 89
    .line 90
    iget v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->W:I

    .line 91
    .line 92
    div-int/lit8 v5, v0, 0x2

    .line 93
    .line 94
    iget v6, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->X:I

    .line 95
    .line 96
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 97
    .line 98
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->E5(Lcom/mycompany/app/main/MainActivity;)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    xor-int/lit8 v2, v0, 0x1

    .line 103
    .line 104
    invoke-virtual/range {v1 .. v6}, Lcom/mycompany/app/image/ImageViewControl;->n(ZIIII)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_4
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 109
    .line 110
    iget v5, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->W:I

    .line 111
    .line 112
    iget v6, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->X:I

    .line 113
    .line 114
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 115
    .line 116
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->E5(Lcom/mycompany/app/main/MainActivity;)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    xor-int/lit8 v2, v0, 0x1

    .line 121
    .line 122
    invoke-virtual/range {v1 .. v6}, Lcom/mycompany/app/image/ImageViewControl;->n(ZIIII)V

    .line 123
    .line 124
    .line 125
    :goto_0
    iget-object p0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 126
    .line 127
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewControl;->w()V

    .line 128
    .line 129
    .line 130
    :cond_5
    :goto_1
    return-void
.end method

.method public static U(Lcom/mycompany/app/image/ImageViewPageEffect;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/mycompany/app/compress/Compress;->Q(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    iput-boolean p3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->o1:Z

    .line 10
    .line 11
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    :goto_0
    return-void

    .line 16
    :cond_1
    new-instance p2, Lcom/mycompany/app/image/ImageViewPageEffect$64;

    .line 17
    .line 18
    invoke-direct {p2, p0}, Lcom/mycompany/app/image/ImageViewPageEffect$64;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public static V(Lcom/mycompany/app/image/ImageViewPageEffect;Lcom/mycompany/app/main/MainItem$ViewItem;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->n:Z

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    if-eqz p1, :cond_4

    .line 6
    .line 7
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mycompany/app/image/ImageViewPageEffect;->d0(Lcom/mycompany/app/main/MainItem$ViewItem;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->o:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 22
    .line 23
    if-ne v0, v1, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->j0:Ljava/util/ArrayList;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 38
    .line 39
    if-nez v0, :cond_3

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    new-instance v1, Lcom/mycompany/app/image/ImageViewPageEffect$26;

    .line 43
    .line 44
    invoke-direct {v1, p0, p1}, Lcom/mycompany/app/image/ImageViewPageEffect$26;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;Lcom/mycompany/app/main/MainItem$ViewItem;)V

    .line 45
    .line 46
    .line 47
    const-wide/16 p0, 0xc8

    .line 48
    .line 49
    invoke-virtual {v0, v1, p0, p1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50
    .line 51
    .line 52
    :cond_4
    :goto_0
    return-void
.end method

.method public static W(Lcom/mycompany/app/image/ImageViewPageEffect;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->Y0:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->w0()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->N0:Z

    .line 16
    .line 17
    sput-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 25
    .line 26
    sget v3, Lnet/kaki87/soul2/testing/R$string;->ocr_trans_reload_1:I

    .line 27
    .line 28
    const-string v4, "\n"

    .line 29
    .line 30
    invoke-static {v2, v3, v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 34
    .line 35
    sget v3, Lnet/kaki87/soul2/testing/R$string;->ocr_trans_reload_2:I

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    new-instance v2, Lcom/mycompany/app/dialog/DialogConfirm;

    .line 45
    .line 46
    iget-object v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    new-instance v4, Lcom/mycompany/app/image/ImageViewPageEffect$73;

    .line 53
    .line 54
    invoke-direct {v4, p0}, Lcom/mycompany/app/image/ImageViewPageEffect$73;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 55
    .line 56
    .line 57
    invoke-direct {v2, v3, v1, v0, v4}, Lcom/mycompany/app/dialog/DialogConfirm;-><init>(Landroid/app/Activity;Ljava/lang/String;ZLcom/mycompany/app/dialog/DialogConfirm$DialogConfListener;)V

    .line 58
    .line 59
    .line 60
    iput-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->Y0:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 61
    .line 62
    new-instance v0, Lcom/mycompany/app/image/ImageViewPageEffect$74;

    .line 63
    .line 64
    invoke-direct {v0, p0}, Lcom/mycompany/app/image/ImageViewPageEffect$74;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v0}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public static X(Lcom/mycompany/app/image/ImageViewPageEffect;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->Z0:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->D0()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->N0:Z

    .line 16
    .line 17
    sput-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 18
    .line 19
    new-instance v0, Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 22
    .line 23
    sget v2, Lcom/mycompany/app/pref/PrefAlbum;->B:I

    .line 24
    .line 25
    new-instance v3, Lcom/mycompany/app/image/ImageViewPageEffect$75;

    .line 26
    .line 27
    invoke-direct {v3, p0}, Lcom/mycompany/app/image/ImageViewPageEffect$75;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 28
    .line 29
    .line 30
    const/4 v4, 0x2

    .line 31
    invoke-direct {v0, v1, v4, v2, v3}, Lcom/mycompany/app/dialog/DialogSeekSimple;-><init>(Landroid/app/Activity;IILcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->Z0:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 35
    .line 36
    new-instance v1, Lcom/mycompany/app/image/ImageViewPageEffect$76;

    .line 37
    .line 38
    invoke-direct {v1, p0}, Lcom/mycompany/app/image/ImageViewPageEffect$76;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public static Y(Lcom/mycompany/app/image/ImageViewPageEffect;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->U0()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->E0()V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-virtual {p0, v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->q0(Z)V

    .line 18
    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->N0:Z

    .line 21
    .line 22
    sput-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 23
    .line 24
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->j1:Ljava/lang/String;

    .line 25
    .line 26
    iput-object p2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->k1:Ljava/lang/String;

    .line 27
    .line 28
    iput-object p3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->l1:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->Q0()Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    new-instance v1, Lcom/mycompany/app/dialog/DialogSetDown;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 37
    .line 38
    new-instance v9, Lcom/mycompany/app/image/ImageViewPageEffect$52;

    .line 39
    .line 40
    invoke-direct {v9, p0}, Lcom/mycompany/app/image/ImageViewPageEffect$52;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 41
    .line 42
    .line 43
    const/4 v6, 0x0

    .line 44
    const/4 v7, 0x0

    .line 45
    const/4 v8, 0x0

    .line 46
    move-object v3, p1

    .line 47
    move-object v4, p3

    .line 48
    invoke-direct/range {v1 .. v9}, Lcom/mycompany/app/dialog/DialogSetDown;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZZILcom/mycompany/app/dialog/DialogSetDown$SetDownListener;)V

    .line 49
    .line 50
    .line 51
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->v0:Lcom/mycompany/app/dialog/DialogSetDown;

    .line 52
    .line 53
    new-instance p1, Lcom/mycompany/app/image/ImageViewPageEffect$53;

    .line 54
    .line 55
    invoke-direct {p1, p0}, Lcom/mycompany/app/image/ImageViewPageEffect$53;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, p1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public static Z(Lcom/mycompany/app/image/ImageViewPageEffect;Landroid/view/View;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->J0()V

    .line 12
    .line 13
    .line 14
    if-nez p1, :cond_2

    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 23
    .line 24
    sget v1, Lnet/kaki87/soul2/testing/R$string;->color_white:I

    .line 25
    .line 26
    sget v2, Lcom/mycompany/app/pref/PrefAlbum;->C:I

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    const/4 v4, 0x1

    .line 30
    if-nez v2, :cond_3

    .line 31
    .line 32
    move v2, v4

    .line 33
    goto :goto_0

    .line 34
    :cond_3
    move v2, v3

    .line 35
    :goto_0
    invoke-direct {v0, v3, v1, v2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 42
    .line 43
    sget v1, Lnet/kaki87/soul2/testing/R$string;->color_black:I

    .line 44
    .line 45
    sget v2, Lcom/mycompany/app/pref/PrefAlbum;->C:I

    .line 46
    .line 47
    if-ne v2, v4, :cond_4

    .line 48
    .line 49
    move v2, v4

    .line 50
    goto :goto_1

    .line 51
    :cond_4
    move v2, v3

    .line 52
    :goto_1
    invoke-direct {v0, v4, v1, v2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 59
    .line 60
    sget v1, Lnet/kaki87/soul2/testing/R$string;->automatic:I

    .line 61
    .line 62
    sget v2, Lcom/mycompany/app/pref/PrefAlbum;->C:I

    .line 63
    .line 64
    const/4 v6, 0x2

    .line 65
    if-ne v2, v6, :cond_5

    .line 66
    .line 67
    move v3, v4

    .line 68
    :cond_5
    invoke-direct {v0, v6, v1, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    new-instance v1, Lcom/mycompany/app/view/MyPopupMenu;

    .line 75
    .line 76
    iget-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 77
    .line 78
    iget-object v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 79
    .line 80
    new-instance v7, Lcom/mycompany/app/image/ImageViewPageEffect$80;

    .line 81
    .line 82
    invoke-direct {v7, p0}, Lcom/mycompany/app/image/ImageViewPageEffect$80;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 83
    .line 84
    .line 85
    const/4 v6, 0x1

    .line 86
    move-object v4, p1

    .line 87
    invoke-direct/range {v1 .. v7}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 88
    .line 89
    .line 90
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 91
    .line 92
    iget-object p0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 93
    .line 94
    if-eqz p0, :cond_6

    .line 95
    .line 96
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 97
    .line 98
    :cond_6
    :goto_2
    return-void
.end method

.method public static a0(Lcom/mycompany/app/image/ImageViewPageEffect;Landroid/view/View;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_5

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    goto/16 :goto_5

    .line 12
    .line 13
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->K0()V

    .line 14
    .line 15
    .line 16
    if-nez p1, :cond_2

    .line 17
    .line 18
    goto/16 :goto_5

    .line 19
    .line 20
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 26
    .line 27
    sget v1, Lcom/mycompany/app/pref/PrefAlbum;->A:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x1

    .line 31
    if-nez v1, :cond_3

    .line 32
    .line 33
    move v1, v3

    .line 34
    goto :goto_0

    .line 35
    :cond_3
    move v1, v2

    .line 36
    :goto_0
    const-string v4, "Alphabet"

    .line 37
    .line 38
    invoke-direct {v0, v4, v2, v1}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(Ljava/lang/String;IZ)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 45
    .line 46
    sget v1, Lcom/mycompany/app/pref/PrefAlbum;->A:I

    .line 47
    .line 48
    if-ne v1, v3, :cond_4

    .line 49
    .line 50
    move v1, v3

    .line 51
    goto :goto_1

    .line 52
    :cond_4
    move v1, v2

    .line 53
    :goto_1
    const-string v4, "Chinese"

    .line 54
    .line 55
    invoke-direct {v0, v4, v3, v1}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(Ljava/lang/String;IZ)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 62
    .line 63
    sget v1, Lcom/mycompany/app/pref/PrefAlbum;->A:I

    .line 64
    .line 65
    const/4 v4, 0x2

    .line 66
    if-ne v1, v4, :cond_5

    .line 67
    .line 68
    move v1, v3

    .line 69
    goto :goto_2

    .line 70
    :cond_5
    move v1, v2

    .line 71
    :goto_2
    const-string v6, "Devanagari"

    .line 72
    .line 73
    invoke-direct {v0, v6, v4, v1}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(Ljava/lang/String;IZ)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 80
    .line 81
    sget v1, Lcom/mycompany/app/pref/PrefAlbum;->A:I

    .line 82
    .line 83
    const/4 v4, 0x3

    .line 84
    if-ne v1, v4, :cond_6

    .line 85
    .line 86
    move v1, v3

    .line 87
    goto :goto_3

    .line 88
    :cond_6
    move v1, v2

    .line 89
    :goto_3
    const-string v6, "Japanese"

    .line 90
    .line 91
    invoke-direct {v0, v6, v4, v1}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(Ljava/lang/String;IZ)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 98
    .line 99
    sget v1, Lcom/mycompany/app/pref/PrefAlbum;->A:I

    .line 100
    .line 101
    const/4 v4, 0x4

    .line 102
    if-ne v1, v4, :cond_7

    .line 103
    .line 104
    move v1, v3

    .line 105
    goto :goto_4

    .line 106
    :cond_7
    move v1, v2

    .line 107
    :goto_4
    const-string v6, "Korean"

    .line 108
    .line 109
    invoke-direct {v0, v6, v4, v1}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(Ljava/lang/String;IZ)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 116
    .line 117
    sget v1, Lnet/kaki87/soul2/testing/R$string;->automatic:I

    .line 118
    .line 119
    sget v4, Lcom/mycompany/app/pref/PrefAlbum;->A:I

    .line 120
    .line 121
    const/4 v6, 0x5

    .line 122
    if-ne v4, v6, :cond_8

    .line 123
    .line 124
    move v2, v3

    .line 125
    :cond_8
    invoke-direct {v0, v6, v1, v2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    new-instance v1, Lcom/mycompany/app/view/MyPopupMenu;

    .line 132
    .line 133
    iget-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 134
    .line 135
    iget-object v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 136
    .line 137
    new-instance v7, Lcom/mycompany/app/image/ImageViewPageEffect$79;

    .line 138
    .line 139
    invoke-direct {v7, p0}, Lcom/mycompany/app/image/ImageViewPageEffect$79;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 140
    .line 141
    .line 142
    const/4 v6, 0x1

    .line 143
    move-object v4, p1

    .line 144
    invoke-direct/range {v1 .. v7}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 145
    .line 146
    .line 147
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 148
    .line 149
    iget-object p0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 150
    .line 151
    if-eqz p0, :cond_9

    .line 152
    .line 153
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 154
    .line 155
    :cond_9
    :goto_5
    return-void
.end method

.method public static b0(Lcom/mycompany/app/image/ImageViewPageEffect;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->T:Lcom/mycompany/app/view/MyCoverView;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyCoverView;->m(Z)V

    .line 12
    .line 13
    .line 14
    :cond_1
    iput-boolean p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->p1:Z

    .line 15
    .line 16
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 17
    .line 18
    new-instance v0, Lcom/mycompany/app/image/ImageViewPageEffect$81;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/mycompany/app/image/ImageViewPageEffect$81;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 8

    .line 1
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 2
    .line 3
    if-eqz v1, :cond_6

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->K:Lcom/mycompany/app/curl/CurlView;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->U:Lcom/mycompany/app/image/ImageCoverView;

    .line 12
    .line 13
    if-eqz v1, :cond_6

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/mycompany/app/image/ImageCoverView;->d()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 23
    .line 24
    if-nez v1, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->R0()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_6

    .line 31
    .line 32
    iget-object v5, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 33
    .line 34
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 35
    .line 36
    iget v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 37
    .line 38
    iget v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 39
    .line 40
    const/4 v7, 0x0

    .line 41
    const/4 v4, 0x1

    .line 42
    const/4 v6, 0x1

    .line 43
    move-object v0, p0

    .line 44
    invoke-virtual/range {v0 .. v7}, Lcom/mycompany/app/image/ImageViewPageEffect;->c1(IIIILjava/lang/String;ZZ)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    sget-boolean v2, Lcom/mycompany/app/pref/PrefImage;->s:Z

    .line 49
    .line 50
    const/4 v3, 0x1

    .line 51
    if-eqz v2, :cond_4

    .line 52
    .line 53
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 54
    .line 55
    if-nez v1, :cond_3

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->R0()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    iget-object v5, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 64
    .line 65
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 66
    .line 67
    iget v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 68
    .line 69
    iget v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 70
    .line 71
    const/4 v7, 0x0

    .line 72
    const/4 v4, 0x1

    .line 73
    const/4 v6, 0x1

    .line 74
    move-object v0, p0

    .line 75
    invoke-virtual/range {v0 .. v7}, Lcom/mycompany/app/image/ImageViewPageEffect;->c1(IIIILjava/lang/String;ZZ)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_3
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 80
    .line 81
    iget v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 82
    .line 83
    invoke-static {v1, v2, v3, v2}, Landroid/support/v4/media/a;->B(IIII)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    goto :goto_0

    .line 88
    :cond_4
    iget v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 89
    .line 90
    sub-int/2addr v1, v3

    .line 91
    if-ne v2, v1, :cond_5

    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->R0()Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_5

    .line 98
    .line 99
    iget-object v5, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 100
    .line 101
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 102
    .line 103
    iget v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 104
    .line 105
    iget v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 106
    .line 107
    const/4 v7, 0x0

    .line 108
    const/4 v4, 0x1

    .line 109
    const/4 v6, 0x1

    .line 110
    move-object v0, p0

    .line 111
    invoke-virtual/range {v0 .. v7}, Lcom/mycompany/app/image/ImageViewPageEffect;->c1(IIIILjava/lang/String;ZZ)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_5
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 116
    .line 117
    add-int/2addr v1, v3

    .line 118
    iget v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 119
    .line 120
    rem-int/2addr v1, v2

    .line 121
    :goto_0
    invoke-virtual {p0, v1}, Lcom/mycompany/app/image/ImageViewPageEffect;->h(I)V

    .line 122
    .line 123
    .line 124
    :cond_6
    :goto_1
    return-void
.end method

.method public final A0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->s0:Lcom/mycompany/app/dialog/DialogListBook;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogListBook;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->s0:Lcom/mycompany/app/dialog/DialogListBook;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final B()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->U0()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    :goto_0
    return-void

    .line 18
    :cond_2
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->z0()V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-virtual {p0, v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->q0(Z)V

    .line 23
    .line 24
    .line 25
    iput-boolean v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->N0:Z

    .line 26
    .line 27
    sput-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 28
    .line 29
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/mycompany/app/data/DataUrl;->b(Landroid/content/Context;)Lcom/mycompany/app/data/DataUrl;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v0, v0, Lcom/mycompany/app/data/DataUrl;->c:Lcom/mycompany/app/data/DataUrl$ImgCntItem;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    iput-boolean v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->o0:Z

    .line 39
    .line 40
    new-instance v1, Lcom/mycompany/app/dialog/DialogImageType;

    .line 41
    .line 42
    iget-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 43
    .line 44
    new-instance v3, Lcom/mycompany/app/image/ImageViewPageEffect$37;

    .line 45
    .line 46
    invoke-direct {v3, p0}, Lcom/mycompany/app/image/ImageViewPageEffect$37;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {v1, v2, v0, v3}, Lcom/mycompany/app/dialog/DialogImageType;-><init>(Landroid/app/Activity;Lcom/mycompany/app/data/DataUrl$ImgCntItem;Lcom/mycompany/app/dialog/DialogSetImage$ChangedListener;)V

    .line 50
    .line 51
    .line 52
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->p0:Lcom/mycompany/app/dialog/DialogImageType;

    .line 53
    .line 54
    new-instance v0, Lcom/mycompany/app/image/ImageViewPageEffect$38;

    .line 55
    .line 56
    invoke-direct {v0, p0}, Lcom/mycompany/app/image/ImageViewPageEffect$38;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final B0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->w0:Lcom/mycompany/app/dialog/DialogPreview;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogPreview;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->w0:Lcom/mycompany/app/dialog/DialogPreview;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final C(Landroid/graphics/RectF;Z)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p2, p1}, Lcom/mycompany/app/image/ImageViewControl;->j(Landroid/graphics/RectF;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final C0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->q0:Lcom/mycompany/app/dialog/DialogSeekBright;

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
    iput-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->q0:Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->N0:Z

    .line 13
    .line 14
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final D(Landroid/view/MotionEvent;Z)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget v1, Lcom/mycompany/app/pref/PrefImage;->D:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-ne v1, v3, :cond_0

    .line 10
    .line 11
    move v1, v3

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v1, v2

    .line 14
    :goto_0
    sget v4, Lcom/mycompany/app/pref/PrefImage;->E:I

    .line 15
    .line 16
    if-ne v4, v3, :cond_1

    .line 17
    .line 18
    move v4, v3

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move v4, v2

    .line 21
    :goto_1
    if-eqz v1, :cond_3

    .line 22
    .line 23
    if-eqz v4, :cond_3

    .line 24
    .line 25
    if-nez p2, :cond_3

    .line 26
    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    iput-boolean v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->H0:Z

    .line 30
    .line 31
    iput-boolean v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->I0:Z

    .line 32
    .line 33
    iput-boolean v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->J0:Z

    .line 34
    .line 35
    iput-boolean v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->K0:Z

    .line 36
    .line 37
    :cond_2
    if-nez p2, :cond_14

    .line 38
    .line 39
    iget-boolean p2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->E0:Z

    .line 40
    .line 41
    if-nez p2, :cond_14

    .line 42
    .line 43
    iget-object p2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->K:Lcom/mycompany/app/curl/CurlView;

    .line 44
    .line 45
    if-eqz p2, :cond_14

    .line 46
    .line 47
    invoke-virtual {p2, p1}, Lcom/mycompany/app/curl/CurlView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_3
    if-eqz v0, :cond_e

    .line 52
    .line 53
    if-eq v0, v3, :cond_9

    .line 54
    .line 55
    const/4 v1, 0x2

    .line 56
    if-eq v0, v1, :cond_5

    .line 57
    .line 58
    const/4 v1, 0x3

    .line 59
    if-eq v0, v1, :cond_4

    .line 60
    .line 61
    const/4 v1, 0x5

    .line 62
    if-eq v0, v1, :cond_4

    .line 63
    .line 64
    goto/16 :goto_5

    .line 65
    .line 66
    :cond_4
    iput-boolean v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->H0:Z

    .line 67
    .line 68
    iput-boolean v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->I0:Z

    .line 69
    .line 70
    iput-boolean v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->J0:Z

    .line 71
    .line 72
    iput-boolean v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->K0:Z

    .line 73
    .line 74
    goto/16 :goto_5

    .line 75
    .line 76
    :cond_5
    iget-boolean v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->H0:Z

    .line 77
    .line 78
    if-nez v0, :cond_6

    .line 79
    .line 80
    iget-boolean v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->I0:Z

    .line 81
    .line 82
    if-nez v0, :cond_6

    .line 83
    .line 84
    if-nez p2, :cond_6

    .line 85
    .line 86
    goto/16 :goto_5

    .line 87
    .line 88
    :cond_6
    iget-boolean v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->J0:Z

    .line 89
    .line 90
    if-eqz v0, :cond_7

    .line 91
    .line 92
    goto/16 :goto_5

    .line 93
    .line 94
    :cond_7
    iget v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->F0:F

    .line 95
    .line 96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    iget v4, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->G0:F

    .line 101
    .line 102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    invoke-static {v0, v1, v4, v5}, Lcom/mycompany/app/main/MainUtil;->I0(FFFF)F

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    sget v1, Lcom/mycompany/app/main/MainApp;->r1:I

    .line 111
    .line 112
    int-to-float v1, v1

    .line 113
    cmpl-float v0, v0, v1

    .line 114
    .line 115
    if-lez v0, :cond_8

    .line 116
    .line 117
    move v2, v3

    .line 118
    :cond_8
    iput-boolean v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->J0:Z

    .line 119
    .line 120
    goto/16 :goto_5

    .line 121
    .line 122
    :cond_9
    iput-boolean v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->K0:Z

    .line 123
    .line 124
    iget-boolean v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->J0:Z

    .line 125
    .line 126
    if-nez v0, :cond_d

    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->T0()Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-eqz v0, :cond_a

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_a
    iget-boolean v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->H0:Z

    .line 136
    .line 137
    if-nez v0, :cond_c

    .line 138
    .line 139
    iget-boolean v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->I0:Z

    .line 140
    .line 141
    if-eqz v0, :cond_b

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_b
    if-eqz p2, :cond_13

    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->p1()V

    .line 147
    .line 148
    .line 149
    goto :goto_5

    .line 150
    :cond_c
    :goto_2
    if-eqz p2, :cond_13

    .line 151
    .line 152
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->k()Z

    .line 153
    .line 154
    .line 155
    goto :goto_5

    .line 156
    :cond_d
    :goto_3
    iput-boolean v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->H0:Z

    .line 157
    .line 158
    iput-boolean v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->I0:Z

    .line 159
    .line 160
    iput-boolean v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->J0:Z

    .line 161
    .line 162
    goto :goto_5

    .line 163
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    iput v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->F0:F

    .line 168
    .line 169
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    iput v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->G0:F

    .line 174
    .line 175
    iput-boolean v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->H0:Z

    .line 176
    .line 177
    iput-boolean v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->I0:Z

    .line 178
    .line 179
    iput-boolean v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->J0:Z

    .line 180
    .line 181
    iput-boolean v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->K0:Z

    .line 182
    .line 183
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->Q0()Z

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    if-eqz v0, :cond_f

    .line 188
    .line 189
    sget v0, Lcom/mycompany/app/pref/PrefImage;->H:I

    .line 190
    .line 191
    sget v1, Lcom/mycompany/app/pref/PrefImage;->I:I

    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_f
    sget v0, Lcom/mycompany/app/pref/PrefImage;->F:I

    .line 195
    .line 196
    sget v1, Lcom/mycompany/app/pref/PrefImage;->G:I

    .line 197
    .line 198
    :goto_4
    iget v4, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->F0:F

    .line 199
    .line 200
    int-to-float v0, v0

    .line 201
    cmpg-float v0, v4, v0

    .line 202
    .line 203
    if-gez v0, :cond_11

    .line 204
    .line 205
    sget v0, Lcom/mycompany/app/pref/PrefImage;->D:I

    .line 206
    .line 207
    if-nez v0, :cond_10

    .line 208
    .line 209
    move v2, v3

    .line 210
    :cond_10
    iput-boolean v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->H0:Z

    .line 211
    .line 212
    goto :goto_5

    .line 213
    :cond_11
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 214
    .line 215
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    sub-int/2addr v0, v1

    .line 220
    int-to-float v0, v0

    .line 221
    cmpl-float v0, v4, v0

    .line 222
    .line 223
    if-lez v0, :cond_13

    .line 224
    .line 225
    sget v0, Lcom/mycompany/app/pref/PrefImage;->E:I

    .line 226
    .line 227
    if-nez v0, :cond_12

    .line 228
    .line 229
    move v2, v3

    .line 230
    :cond_12
    iput-boolean v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->I0:Z

    .line 231
    .line 232
    :cond_13
    :goto_5
    if-nez p2, :cond_14

    .line 233
    .line 234
    iget-boolean p2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->E0:Z

    .line 235
    .line 236
    if-nez p2, :cond_14

    .line 237
    .line 238
    iget-object p2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->K:Lcom/mycompany/app/curl/CurlView;

    .line 239
    .line 240
    if-eqz p2, :cond_14

    .line 241
    .line 242
    invoke-virtual {p2, p1}, Lcom/mycompany/app/curl/CurlView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 243
    .line 244
    .line 245
    :cond_14
    return-void
.end method

.method public final D0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->Z0:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSeekSimple;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->Z0:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->N0:Z

    .line 13
    .line 14
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final E()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->R0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v6, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 8
    .line 9
    iget v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 10
    .line 11
    iget v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 12
    .line 13
    iget v4, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 14
    .line 15
    const/4 v8, 0x1

    .line 16
    const/4 v5, 0x2

    .line 17
    const/4 v7, 0x0

    .line 18
    move-object v1, p0

    .line 19
    invoke-virtual/range {v1 .. v8}, Lcom/mycompany/app/image/ImageViewPageEffect;->c1(IIIILjava/lang/String;ZZ)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    move-object v1, p0

    .line 24
    sget-boolean v0, Lcom/mycompany/app/pref/PrefImage;->s:Z

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    iget v0, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 30
    .line 31
    iget v3, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 32
    .line 33
    add-int/lit8 v3, v3, -0x1

    .line 34
    .line 35
    if-eq v0, v3, :cond_1

    .line 36
    .line 37
    move v2, v3

    .line 38
    :cond_1
    invoke-virtual {p0, v2}, Lcom/mycompany/app/image/ImageViewPageEffect;->h(I)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    iget v0, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    iget v0, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 48
    .line 49
    add-int/lit8 v2, v0, -0x1

    .line 50
    .line 51
    :goto_0
    invoke-virtual {p0, v2}, Lcom/mycompany/app/image/ImageViewPageEffect;->h(I)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final E0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->v0:Lcom/mycompany/app/dialog/DialogSetDown;

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
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->v0:Lcom/mycompany/app/dialog/DialogSetDown;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->N0:Z

    .line 13
    .line 14
    iget-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 15
    .line 16
    invoke-static {v2, v0}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->j1:Ljava/lang/String;

    .line 20
    .line 21
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->k1:Ljava/lang/String;

    .line 22
    .line 23
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->l1:Ljava/lang/String;

    .line 24
    .line 25
    return-void
.end method

.method public final F(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->f0:Z

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
    invoke-virtual {p0, v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->h0(Z)Z

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->s0:Lcom/mycompany/app/dialog/DialogListBook;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/mycompany/app/dialog/DialogListBook;->q(Landroid/content/res/Configuration;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->t0:Lcom/mycompany/app/dialog/DialogCapture;

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->Q0()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-virtual {p1, v0}, Lcom/mycompany/app/dialog/DialogCapture;->q(Z)V

    .line 26
    .line 27
    .line 28
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->u0:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 29
    .line 30
    if-eqz p1, :cond_3

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->Q0()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-virtual {p1, v0}, Lcom/mycompany/app/dialog/DialogDownUrl;->S(Z)V

    .line 37
    .line 38
    .line 39
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->w0:Lcom/mycompany/app/dialog/DialogPreview;

    .line 40
    .line 41
    if-eqz p1, :cond_4

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->Q0()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    invoke-virtual {p1, v0}, Lcom/mycompany/app/dialog/DialogPreview;->D(Z)V

    .line 48
    .line 49
    .line 50
    :cond_4
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->O0()Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_5

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->j1()V

    .line 57
    .line 58
    .line 59
    :cond_5
    :goto_0
    return-void
.end method

.method public final F0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x0:Lcom/mycompany/app/dialog/DialogSetImage;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetImage;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x0:Lcom/mycompany/app/dialog/DialogSetImage;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->N0:Z

    .line 13
    .line 14
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final G()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->j:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->B:Lcom/mycompany/app/image/ImageViewPageEffect$EventHandler;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->B:Lcom/mycompany/app/image/ImageViewPageEffect$EventHandler;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 16
    .line 17
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    :try_start_0
    iget-boolean v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->C0:Z

    .line 23
    .line 24
    if-nez v2, :cond_2

    .line 25
    .line 26
    iget v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    .line 27
    .line 28
    const/16 v3, 0xc

    .line 29
    .line 30
    if-ne v2, v3, :cond_2

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/mycompany/app/compress/Compress;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    :catch_0
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->M:Lcom/mycompany/app/view/MyCoverView;

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyCoverView;->i()V

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->M:Lcom/mycompany/app/view/MyCoverView;

    .line 43
    .line 44
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->O:Lcom/mycompany/app/view/MyImageView;

    .line 45
    .line 46
    if-eqz v0, :cond_4

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyImageView;->d()V

    .line 49
    .line 50
    .line 51
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->O:Lcom/mycompany/app/view/MyImageView;

    .line 52
    .line 53
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->Q:Lcom/mycompany/app/view/MyButtonImage;

    .line 54
    .line 55
    if-eqz v0, :cond_5

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 58
    .line 59
    .line 60
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->Q:Lcom/mycompany/app/view/MyButtonImage;

    .line 61
    .line 62
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->T:Lcom/mycompany/app/view/MyCoverView;

    .line 63
    .line 64
    if-eqz v0, :cond_6

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyCoverView;->i()V

    .line 67
    .line 68
    .line 69
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->T:Lcom/mycompany/app/view/MyCoverView;

    .line 70
    .line 71
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->U:Lcom/mycompany/app/image/ImageCoverView;

    .line 72
    .line 73
    if-eqz v0, :cond_8

    .line 74
    .line 75
    iget-object v2, v0, Lcom/mycompany/app/image/ImageCoverView;->l:Landroid/animation/ValueAnimator;

    .line 76
    .line 77
    iput-object v1, v0, Lcom/mycompany/app/image/ImageCoverView;->l:Landroid/animation/ValueAnimator;

    .line 78
    .line 79
    if-eqz v2, :cond_7

    .line 80
    .line 81
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 82
    .line 83
    .line 84
    :cond_7
    iput-object v1, v0, Lcom/mycompany/app/image/ImageCoverView;->g:Landroid/graphics/Bitmap;

    .line 85
    .line 86
    iput-object v1, v0, Lcom/mycompany/app/image/ImageCoverView;->h:Landroid/graphics/drawable/Drawable;

    .line 87
    .line 88
    iput-object v1, v0, Lcom/mycompany/app/image/ImageCoverView;->k:Landroid/graphics/Paint;

    .line 89
    .line 90
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->U:Lcom/mycompany/app/image/ImageCoverView;

    .line 91
    .line 92
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->Y:Lcom/mycompany/app/view/MyFadeLinear;

    .line 93
    .line 94
    if-eqz v0, :cond_9

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyFadeLinear;->f()V

    .line 97
    .line 98
    .line 99
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->Y:Lcom/mycompany/app/view/MyFadeLinear;

    .line 100
    .line 101
    :cond_9
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->M0:Lcom/mycompany/app/view/MyFadeFrame;

    .line 102
    .line 103
    if-eqz v0, :cond_a

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyFadeFrame;->f()V

    .line 106
    .line 107
    .line 108
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->M0:Lcom/mycompany/app/view/MyFadeFrame;

    .line 109
    .line 110
    :cond_a
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->O0:Landroid/os/Handler;

    .line 111
    .line 112
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->R6(Landroid/os/Handler;)V

    .line 113
    .line 114
    .line 115
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->O0:Landroid/os/Handler;

    .line 116
    .line 117
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 118
    .line 119
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->d:Landroid/view/Window;

    .line 120
    .line 121
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->o:Ljava/util/ArrayList;

    .line 122
    .line 123
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->u:Ljava/lang/String;

    .line 124
    .line 125
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 126
    .line 127
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->K:Lcom/mycompany/app/curl/CurlView;

    .line 128
    .line 129
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->N:Landroid/widget/FrameLayout;

    .line 130
    .line 131
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->Z:Landroid/view/View;

    .line 132
    .line 133
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->a0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 134
    .line 135
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 136
    .line 137
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c0:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 138
    .line 139
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->L0:Landroid/view/GestureDetector;

    .line 140
    .line 141
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 142
    .line 143
    if-eqz v0, :cond_b

    .line 144
    .line 145
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewControl;->g()V

    .line 146
    .line 147
    .line 148
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 149
    .line 150
    :cond_b
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->l0:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 151
    .line 152
    if-eqz v0, :cond_c

    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->r()V

    .line 155
    .line 156
    .line 157
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->l0:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 158
    .line 159
    :cond_c
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->g:Lcom/mycompany/app/image/ImageViewActivity$SavedItem;

    .line 160
    .line 161
    if-eqz v0, :cond_d

    .line 162
    .line 163
    iget-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 164
    .line 165
    if-eqz v2, :cond_d

    .line 166
    .line 167
    invoke-virtual {v2, v0}, Lcom/mycompany/app/image/ImageViewActivity;->v0(Lcom/mycompany/app/image/ImageViewActivity$SavedItem;)V

    .line 168
    .line 169
    .line 170
    :cond_d
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 171
    .line 172
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->g:Lcom/mycompany/app/image/ImageViewActivity$SavedItem;

    .line 173
    .line 174
    return-void
.end method

.method public final G0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->a1:Lcom/mycompany/app/dialog/DialogSetImgTrans;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetImgTrans;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->a1:Lcom/mycompany/app/dialog/DialogSetImgTrans;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->N0:Z

    .line 13
    .line 14
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final H(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->i1(Z)V

    .line 3
    .line 4
    .line 5
    sget-boolean v1, Lcom/mycompany/app/pref/PrefImage;->o:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/16 v1, 0x18

    .line 11
    .line 12
    if-eq p1, v1, :cond_4

    .line 13
    .line 14
    const/16 v1, 0x19

    .line 15
    .line 16
    if-eq p1, v1, :cond_1

    .line 17
    .line 18
    :goto_0
    const/4 p1, 0x0

    .line 19
    return p1

    .line 20
    :cond_1
    iget-boolean p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->D0:Z

    .line 21
    .line 22
    if-nez p1, :cond_7

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->P0()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_7

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->T0()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_7

    .line 35
    .line 36
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->R:Lcom/mycompany/app/image/ImageGifView;

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    iget-boolean p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->f:Z

    .line 42
    .line 43
    if-eqz p1, :cond_3

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->a1()V

    .line 46
    .line 47
    .line 48
    return v0

    .line 49
    :cond_3
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->g1()V

    .line 50
    .line 51
    .line 52
    return v0

    .line 53
    :cond_4
    iget-boolean p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->D0:Z

    .line 54
    .line 55
    if-nez p1, :cond_7

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->P0()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_7

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->T0()Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-nez p1, :cond_7

    .line 68
    .line 69
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->R:Lcom/mycompany/app/image/ImageGifView;

    .line 70
    .line 71
    if-eqz p1, :cond_5

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_5
    iget-boolean p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->f:Z

    .line 75
    .line 76
    if-eqz p1, :cond_6

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->g1()V

    .line 79
    .line 80
    .line 81
    return v0

    .line 82
    :cond_6
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->a1()V

    .line 83
    .line 84
    .line 85
    :cond_7
    :goto_1
    return v0
.end method

.method public final H0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->U0:Lcom/mycompany/app/dialog/DialogTransLang;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogTransLang;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->U0:Lcom/mycompany/app/dialog/DialogTransLang;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->N0:Z

    .line 13
    .line 14
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final I(Z)V
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->j:Z

    .line 5
    .line 6
    :cond_0
    iput-boolean v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->i:Z

    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->N0:Z

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 14
    .line 15
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->t0:Lcom/mycompany/app/dialog/DialogCapture;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-boolean v1, v1, Lcom/mycompany/app/dialog/DialogCapture;->U:Z

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 28
    .line 29
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 30
    .line 31
    .line 32
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 33
    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/mycompany/app/image/ImageViewControl;->A()V

    .line 37
    .line 38
    .line 39
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->s0:Lcom/mycompany/app/dialog/DialogListBook;

    .line 40
    .line 41
    if-eqz v1, :cond_4

    .line 42
    .line 43
    invoke-virtual {v1, p1}, Lcom/mycompany/app/dialog/DialogListBook;->r(Z)V

    .line 44
    .line 45
    .line 46
    :cond_4
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->w0:Lcom/mycompany/app/dialog/DialogPreview;

    .line 47
    .line 48
    if-eqz v1, :cond_5

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogPreview;->E()V

    .line 51
    .line 52
    .line 53
    :cond_5
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->M0()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->L0()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->X0()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->q0(Z)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->e1()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v2}, Lcom/mycompany/app/image/ImageViewPageEffect;->i1(Z)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->g0(Z)V

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->d0:Lcom/mycompany/app/list/ListTask;

    .line 75
    .line 76
    const/4 v2, 0x0

    .line 77
    if-eqz v1, :cond_6

    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/mycompany/app/list/ListTask;->a()V

    .line 80
    .line 81
    .line 82
    iput-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->d0:Lcom/mycompany/app/list/ListTask;

    .line 83
    .line 84
    :cond_6
    iget-boolean v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->e0:Z

    .line 85
    .line 86
    if-nez v1, :cond_8

    .line 87
    .line 88
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->g0:Lcom/mycompany/app/image/ImageViewPageEffect$LoadTask;

    .line 89
    .line 90
    if-eqz v1, :cond_7

    .line 91
    .line 92
    iput-boolean v0, v1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 93
    .line 94
    :cond_7
    iput-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->g0:Lcom/mycompany/app/image/ImageViewPageEffect$LoadTask;

    .line 95
    .line 96
    :cond_8
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    .line 97
    .line 98
    const/4 v3, 0x6

    .line 99
    if-ne v1, v0, :cond_9

    .line 100
    .line 101
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 102
    .line 103
    sput-object v1, Lcom/mycompany/app/pref/PrefPath;->j:Ljava/lang/String;

    .line 104
    .line 105
    iget-object v4, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 106
    .line 107
    const-string v5, "mAlbumPath"

    .line 108
    .line 109
    invoke-static {v3, v4, v5, v1}, Lcom/mycompany/app/pref/PrefSet;->c(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object v6, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 113
    .line 114
    iget-object v7, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 115
    .line 116
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 117
    .line 118
    int-to-long v8, v1

    .line 119
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 120
    .line 121
    int-to-long v10, v1

    .line 122
    iget v12, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 123
    .line 124
    invoke-static/range {v6 .. v12}, Lcom/mycompany/app/db/DbAlbum;->e(Landroid/content/Context;Ljava/lang/String;JJI)V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_9
    const/4 v4, 0x2

    .line 129
    if-ne v1, v4, :cond_a

    .line 130
    .line 131
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 132
    .line 133
    sput-object v1, Lcom/mycompany/app/pref/PrefPath;->l:Ljava/lang/String;

    .line 134
    .line 135
    iget-object v4, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 136
    .line 137
    const-string v5, "mPdfPath"

    .line 138
    .line 139
    invoke-static {v3, v4, v5, v1}, Lcom/mycompany/app/pref/PrefSet;->c(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    iget-object v6, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 143
    .line 144
    iget-object v7, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 145
    .line 146
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 147
    .line 148
    int-to-long v8, v1

    .line 149
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 150
    .line 151
    int-to-long v10, v1

    .line 152
    iget v12, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 153
    .line 154
    invoke-static/range {v6 .. v12}, Lcom/mycompany/app/db/DbPdf;->f(Landroid/content/Context;Ljava/lang/String;JJI)V

    .line 155
    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_a
    const/4 v4, 0x3

    .line 159
    if-ne v1, v4, :cond_b

    .line 160
    .line 161
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 162
    .line 163
    sput-object v1, Lcom/mycompany/app/pref/PrefPath;->k:Ljava/lang/String;

    .line 164
    .line 165
    iget-object v4, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 166
    .line 167
    const-string v5, "mCmpPath"

    .line 168
    .line 169
    invoke-static {v3, v4, v5, v1}, Lcom/mycompany/app/pref/PrefSet;->c(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iget-object v6, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 173
    .line 174
    iget-object v7, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 175
    .line 176
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 177
    .line 178
    int-to-long v8, v1

    .line 179
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 180
    .line 181
    int-to-long v10, v1

    .line 182
    iget v12, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 183
    .line 184
    invoke-static/range {v6 .. v12}, Lcom/mycompany/app/db/DbCmp;->f(Landroid/content/Context;Ljava/lang/String;JJI)V

    .line 185
    .line 186
    .line 187
    :cond_b
    :goto_1
    if-eqz p1, :cond_e

    .line 188
    .line 189
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->r0()V

    .line 190
    .line 191
    .line 192
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->h0:Lcom/mycompany/app/image/ImageViewPageEffect$BookTask;

    .line 193
    .line 194
    if-eqz p1, :cond_c

    .line 195
    .line 196
    iput-boolean v0, p1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 197
    .line 198
    :cond_c
    iput-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->h0:Lcom/mycompany/app/image/ImageViewPageEffect$BookTask;

    .line 199
    .line 200
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->f0()V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->W0()V

    .line 204
    .line 205
    .line 206
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->d1:Lcom/mycompany/app/ocr/OcrDetector;

    .line 207
    .line 208
    if-eqz p1, :cond_d

    .line 209
    .line 210
    invoke-virtual {p1}, Lcom/mycompany/app/ocr/OcrDetector;->E()V

    .line 211
    .line 212
    .line 213
    iput-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->d1:Lcom/mycompany/app/ocr/OcrDetector;

    .line 214
    .line 215
    :cond_d
    sput-object v2, Lcom/mycompany/app/main/MainApp;->T1:Landroid/widget/Toast;

    .line 216
    .line 217
    :cond_e
    return-void
.end method

.method public final I0(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->Y:Lcom/mycompany/app/view/MyFadeLinear;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1, p1}, Lcom/mycompany/app/view/MyFadeLinear;->d(ZZ)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public final J()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->i:Z

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->C:Z

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Lcom/mycompany/app/image/ImageViewPageEffect;->i1(Z)V

    .line 8
    .line 9
    .line 10
    iget-boolean v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->h:Z

    .line 11
    .line 12
    xor-int/2addr v2, v1

    .line 13
    iget-object v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->s0:Lcom/mycompany/app/dialog/DialogListBook;

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    invoke-virtual {v3, v2}, Lcom/mycompany/app/dialog/DialogListBook;->s(Z)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->w0:Lcom/mycompany/app/dialog/DialogPreview;

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/mycompany/app/dialog/DialogPreview;->H()V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget-boolean v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->h:Z

    .line 28
    .line 29
    if-nez v2, :cond_12

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->e1()V

    .line 32
    .line 33
    .line 34
    iget v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    .line 35
    .line 36
    const/16 v3, 0xc

    .line 37
    .line 38
    const/4 v4, 0x3

    .line 39
    const/4 v5, 0x2

    .line 40
    if-eq v2, v1, :cond_3

    .line 41
    .line 42
    if-eq v2, v5, :cond_3

    .line 43
    .line 44
    if-eq v2, v4, :cond_3

    .line 45
    .line 46
    if-ne v2, v3, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    iget-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 50
    .line 51
    sget v3, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 52
    .line 53
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->k0()V

    .line 57
    .line 58
    .line 59
    goto/16 :goto_4

    .line 60
    .line 61
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->d0:Lcom/mycompany/app/list/ListTask;

    .line 62
    .line 63
    if-eqz v2, :cond_4

    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/mycompany/app/list/ListTask;->a()V

    .line 66
    .line 67
    .line 68
    const/4 v2, 0x0

    .line 69
    iput-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->d0:Lcom/mycompany/app/list/ListTask;

    .line 70
    .line 71
    :cond_4
    iget v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    .line 72
    .line 73
    if-ne v2, v3, :cond_5

    .line 74
    .line 75
    goto/16 :goto_3

    .line 76
    .line 77
    :cond_5
    iget-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_6

    .line 84
    .line 85
    iget-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 86
    .line 87
    sget v3, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 88
    .line 89
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->k0()V

    .line 93
    .line 94
    .line 95
    goto/16 :goto_3

    .line 96
    .line 97
    :cond_6
    iget v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    .line 98
    .line 99
    if-ne v2, v1, :cond_7

    .line 100
    .line 101
    iget-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 102
    .line 103
    invoke-static {v2}, Lcom/mycompany/app/data/DataAlbum;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataAlbum;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    iget-object v2, v2, Lcom/mycompany/app/data/DataList;->b:Ljava/util/List;

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_7
    if-ne v2, v5, :cond_8

    .line 111
    .line 112
    iget-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 113
    .line 114
    invoke-static {v2}, Lcom/mycompany/app/data/DataPdf;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataPdf;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    iget-object v2, v2, Lcom/mycompany/app/data/DataList;->b:Ljava/util/List;

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_8
    if-ne v2, v4, :cond_10

    .line 122
    .line 123
    iget-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 124
    .line 125
    invoke-static {v2}, Lcom/mycompany/app/data/DataCmp;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataCmp;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    iget-object v2, v2, Lcom/mycompany/app/data/DataList;->b:Ljava/util/List;

    .line 130
    .line 131
    :goto_1
    if-eqz v2, :cond_d

    .line 132
    .line 133
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    if-nez v3, :cond_d

    .line 138
    .line 139
    iget v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->t:I

    .line 140
    .line 141
    if-ltz v3, :cond_9

    .line 142
    .line 143
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 144
    .line 145
    .line 146
    move-result v6

    .line 147
    if-ge v3, v6, :cond_9

    .line 148
    .line 149
    iget-object v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 150
    .line 151
    iget v6, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->t:I

    .line 152
    .line 153
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    if-eqz v2, :cond_9

    .line 162
    .line 163
    goto/16 :goto_3

    .line 164
    .line 165
    :cond_9
    iget v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    .line 166
    .line 167
    if-ne v2, v1, :cond_a

    .line 168
    .line 169
    iget-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 170
    .line 171
    invoke-static {v2}, Lcom/mycompany/app/data/DataAlbum;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataAlbum;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    iget-object v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 176
    .line 177
    invoke-virtual {v2, v3}, Lcom/mycompany/app/data/DataList;->e(Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    iput v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->t:I

    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_a
    if-ne v2, v5, :cond_b

    .line 185
    .line 186
    iget-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 187
    .line 188
    invoke-static {v2}, Lcom/mycompany/app/data/DataPdf;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataPdf;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    iget-object v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 193
    .line 194
    invoke-virtual {v2, v3}, Lcom/mycompany/app/data/DataList;->e(Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    iput v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->t:I

    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_b
    if-ne v2, v4, :cond_c

    .line 202
    .line 203
    iget-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 204
    .line 205
    invoke-static {v2}, Lcom/mycompany/app/data/DataCmp;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataCmp;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    iget-object v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 210
    .line 211
    invoke-virtual {v2, v3}, Lcom/mycompany/app/data/DataList;->e(Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    iput v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->t:I

    .line 216
    .line 217
    :cond_c
    :goto_2
    iget v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->t:I

    .line 218
    .line 219
    const/4 v3, -0x1

    .line 220
    if-eq v2, v3, :cond_d

    .line 221
    .line 222
    goto :goto_3

    .line 223
    :cond_d
    iget v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    .line 224
    .line 225
    if-ne v2, v1, :cond_e

    .line 226
    .line 227
    new-instance v2, Lcom/mycompany/app/list/ListTaskAlbum;

    .line 228
    .line 229
    iget-object v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 230
    .line 231
    new-instance v4, Lcom/mycompany/app/image/ImageViewPageEffect$14;

    .line 232
    .line 233
    invoke-direct {v4, p0}, Lcom/mycompany/app/image/ImageViewPageEffect$14;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 234
    .line 235
    .line 236
    invoke-direct {v2, v3, v4}, Lcom/mycompany/app/list/ListTaskAlbum;-><init>(Landroid/content/Context;Lcom/mycompany/app/list/ListTask$ListTaskListener;)V

    .line 237
    .line 238
    .line 239
    iput-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->d0:Lcom/mycompany/app/list/ListTask;

    .line 240
    .line 241
    iget-object v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 242
    .line 243
    invoke-virtual {v2, v3, v0, v1}, Lcom/mycompany/app/list/ListTaskAlbum;->l(Ljava/lang/String;ZZ)V

    .line 244
    .line 245
    .line 246
    goto :goto_3

    .line 247
    :cond_e
    if-ne v2, v5, :cond_f

    .line 248
    .line 249
    new-instance v2, Lcom/mycompany/app/list/ListTaskPdf;

    .line 250
    .line 251
    iget-object v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 252
    .line 253
    new-instance v4, Lcom/mycompany/app/image/ImageViewPageEffect$15;

    .line 254
    .line 255
    invoke-direct {v4, p0}, Lcom/mycompany/app/image/ImageViewPageEffect$15;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 256
    .line 257
    .line 258
    invoke-direct {v2, v3, v4}, Lcom/mycompany/app/list/ListTaskPdf;-><init>(Landroid/content/Context;Lcom/mycompany/app/list/ListTask$ListTaskListener;)V

    .line 259
    .line 260
    .line 261
    iput-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->d0:Lcom/mycompany/app/list/ListTask;

    .line 262
    .line 263
    iget-object v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 264
    .line 265
    invoke-virtual {v2, v3, v0, v1}, Lcom/mycompany/app/list/ListTaskPdf;->l(Ljava/lang/String;ZZ)V

    .line 266
    .line 267
    .line 268
    goto :goto_3

    .line 269
    :cond_f
    if-ne v2, v4, :cond_10

    .line 270
    .line 271
    new-instance v2, Lcom/mycompany/app/list/ListTaskCmp;

    .line 272
    .line 273
    iget-object v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 274
    .line 275
    new-instance v4, Lcom/mycompany/app/image/ImageViewPageEffect$16;

    .line 276
    .line 277
    invoke-direct {v4, p0}, Lcom/mycompany/app/image/ImageViewPageEffect$16;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 278
    .line 279
    .line 280
    invoke-direct {v2, v3, v4}, Lcom/mycompany/app/list/ListTaskCmp;-><init>(Landroid/content/Context;Lcom/mycompany/app/list/ListTask$ListTaskListener;)V

    .line 281
    .line 282
    .line 283
    iput-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->d0:Lcom/mycompany/app/list/ListTask;

    .line 284
    .line 285
    iget-object v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 286
    .line 287
    invoke-virtual {v2, v3, v0, v1}, Lcom/mycompany/app/list/ListTaskCmp;->l(Ljava/lang/String;ZZ)V

    .line 288
    .line 289
    .line 290
    :cond_10
    :goto_3
    iget-boolean v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->e0:Z

    .line 291
    .line 292
    if-nez v2, :cond_11

    .line 293
    .line 294
    iget-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->g0:Lcom/mycompany/app/image/ImageViewPageEffect$LoadTask;

    .line 295
    .line 296
    if-nez v2, :cond_11

    .line 297
    .line 298
    invoke-virtual {p0, v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->j0(Z)V

    .line 299
    .line 300
    .line 301
    :cond_11
    iget-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 302
    .line 303
    if-eqz v2, :cond_12

    .line 304
    .line 305
    iget v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    .line 306
    .line 307
    invoke-virtual {v2, v3}, Lcom/mycompany/app/image/ImageViewControl;->setIconType(I)V

    .line 308
    .line 309
    .line 310
    :cond_12
    :goto_4
    iput-boolean v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->h:Z

    .line 311
    .line 312
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 313
    .line 314
    if-eqz v0, :cond_13

    .line 315
    .line 316
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewControl;->C()V

    .line 317
    .line 318
    .line 319
    :cond_13
    iget-boolean v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->N0:Z

    .line 320
    .line 321
    if-eqz v0, :cond_14

    .line 322
    .line 323
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 324
    .line 325
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 326
    .line 327
    .line 328
    return-void

    .line 329
    :cond_14
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->t0:Lcom/mycompany/app/dialog/DialogCapture;

    .line 330
    .line 331
    if-eqz v0, :cond_15

    .line 332
    .line 333
    iget-boolean v0, v0, Lcom/mycompany/app/dialog/DialogCapture;->U:Z

    .line 334
    .line 335
    if-eqz v0, :cond_15

    .line 336
    .line 337
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 338
    .line 339
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 340
    .line 341
    .line 342
    :cond_15
    return-void
.end method

.method public final J0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iput-object v2, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 11
    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 13
    .line 14
    .line 15
    iput-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public final K()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v1, Lcom/mycompany/app/image/ImageViewPageEffect$31;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/mycompany/app/image/ImageViewPageEffect$31;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final K0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iput-object v2, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 11
    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 13
    .line 14
    .line 15
    iput-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public final L()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->S0:Lcom/mycompany/app/web/WebTransOcrCtrl;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->N0()V

    .line 7
    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->R:Lcom/mycompany/app/image/ImageGifView;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyFadeFrame;->d(Z)V

    .line 15
    .line 16
    .line 17
    return v1

    .line 18
    :cond_1
    const/4 v0, 0x0

    .line 19
    return v0
.end method

.method public final L0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iput-object v2, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 11
    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 13
    .line 14
    .line 15
    iput-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyFadeRelative;->setAutoHide(Z)V

    .line 23
    .line 24
    .line 25
    :cond_2
    return-void
.end method

.method public final M(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->e:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0, p1}, Lcom/mycompany/app/image/ImageViewControl;->setNaviHeight(I)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/mycompany/app/image/ImageViewControl;->v()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final M0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iput-object v2, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 11
    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 13
    .line 14
    .line 15
    iput-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyFadeRelative;->setAutoHide(Z)V

    .line 23
    .line 24
    .line 25
    :cond_2
    return-void
.end method

.method public final N0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->S0:Lcom/mycompany/app/web/WebTransOcrCtrl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebTransOcrCtrl;->i(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyFadeRelative;->setAutoHide(Z)V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public final O0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

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

.method public final P0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->T:Lcom/mycompany/app/view/MyCoverView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyCoverView;->h()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public final Q0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->N5(Landroid/content/Context;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainActivity;->h0()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public final R0()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    .line 7
    .line 8
    const/16 v2, 0xc

    .line 9
    .line 10
    if-ne v1, v2, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    iget-boolean v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->k:Z

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {v0}, Lcom/mycompany/app/compress/Compress;->i()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x1

    .line 23
    if-le v0, v1, :cond_3

    .line 24
    .line 25
    return v1

    .line 26
    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 27
    return v0
.end method

.method public final S0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->O:Lcom/mycompany/app/view/MyImageView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_1
    return v1
.end method

.method public final T0()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->L:I

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

.method public final U0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->G:Lcom/mycompany/app/dialog/DialogEditText;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    goto/16 :goto_0

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->p0:Lcom/mycompany/app/dialog/DialogImageType;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->q0:Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->r0:Lcom/mycompany/app/dialog/DialogImageBack;

    .line 19
    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->s0:Lcom/mycompany/app/dialog/DialogListBook;

    .line 24
    .line 25
    if-eqz v0, :cond_4

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->t0:Lcom/mycompany/app/dialog/DialogCapture;

    .line 29
    .line 30
    if-eqz v0, :cond_5

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->u0:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 34
    .line 35
    if-eqz v0, :cond_6

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->v0:Lcom/mycompany/app/dialog/DialogSetDown;

    .line 39
    .line 40
    if-eqz v0, :cond_7

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->w0:Lcom/mycompany/app/dialog/DialogPreview;

    .line 44
    .line 45
    if-eqz v0, :cond_8

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x0:Lcom/mycompany/app/dialog/DialogSetImage;

    .line 49
    .line 50
    if-eqz v0, :cond_9

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_9
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->U0:Lcom/mycompany/app/dialog/DialogTransLang;

    .line 54
    .line 55
    if-eqz v0, :cond_a

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_a
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V0:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 59
    .line 60
    if-eqz v0, :cond_b

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_b
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->W0:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 64
    .line 65
    if-eqz v0, :cond_c

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_c
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->X0:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 69
    .line 70
    if-eqz v0, :cond_d

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_d
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->Y0:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 74
    .line 75
    if-eqz v0, :cond_e

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_e
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->Z0:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 79
    .line 80
    if-eqz v0, :cond_f

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_f
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->a1:Lcom/mycompany/app/dialog/DialogSetImgTrans;

    .line 84
    .line 85
    if-eqz v0, :cond_10

    .line 86
    .line 87
    :goto_0
    return v1

    .line 88
    :cond_10
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->d1:Lcom/mycompany/app/ocr/OcrDetector;

    .line 89
    .line 90
    if-eqz v0, :cond_11

    .line 91
    .line 92
    iget-object v0, v0, Lcom/mycompany/app/ocr/OcrDetector;->P:Lcom/mycompany/app/dialog/DialogOcrLoad;

    .line 93
    .line 94
    if-eqz v0, :cond_11

    .line 95
    .line 96
    return v1

    .line 97
    :cond_11
    const/4 v0, 0x0

    .line 98
    return v0
.end method

.method public final V0(Lcom/mycompany/app/main/MainItem$ViewItem;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    if-eqz p1, :cond_5

    .line 6
    .line 7
    iget-object v0, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->c:Lcom/mycompany/app/curl/CurlMesh;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->v:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->v:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    iget-boolean v0, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->m:Z

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    if-nez v0, :cond_4

    .line 35
    .line 36
    iget-boolean v0, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->j:Z

    .line 37
    .line 38
    if-nez v0, :cond_4

    .line 39
    .line 40
    iget-boolean v0, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->l:Z

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    iget-object v0, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->c:Lcom/mycompany/app/curl/CurlMesh;

    .line 46
    .line 47
    invoke-virtual {v0, v1, v1}, Lcom/mycompany/app/curl/CurlMesh;->f(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->K:Lcom/mycompany/app/curl/CurlView;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 53
    .line 54
    .line 55
    iget v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->p:I

    .line 56
    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 60
    .line 61
    iget v1, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lcom/mycompany/app/compress/Compress;->n(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_3

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c0:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 79
    .line 80
    new-instance v2, Lcom/mycompany/app/image/ImageViewPageEffect$23;

    .line 81
    .line 82
    invoke-direct {v2, p0}, Lcom/mycompany/app/image/ImageViewPageEffect$23;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, p1, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->i(Lcom/mycompany/app/main/MainItem$ViewItem;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_4
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/image/ImageViewPageEffect;->i0(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/graphics/Bitmap;)V

    .line 90
    .line 91
    .line 92
    :cond_5
    :goto_1
    return-void
.end method

.method public final W0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->q:Lcom/mycompany/app/web/WebLoadWrap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebLoadWrap;->b()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->q:Lcom/mycompany/app/web/WebLoadWrap;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->r:Lcom/mycompany/app/web/WebLoadWrap;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebLoadWrap;->b()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->r:Lcom/mycompany/app/web/WebLoadWrap;

    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public final X0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->H0()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->x0()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->v0()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->u0()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->w0()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->D0()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->G0()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->K0()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->J0()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->R0:Landroid/widget/FrameLayout;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->S0:Lcom/mycompany/app/web/WebTransOcrCtrl;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    iput-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->R0:Landroid/widget/FrameLayout;

    .line 34
    .line 35
    iput-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->S0:Lcom/mycompany/app/web/WebTransOcrCtrl;

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    :try_start_0
    iget-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 40
    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    if-eqz v1, :cond_1

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebTransOcrCtrl;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    :catch_0
    :cond_1
    return-void
.end method

.method public final Y0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->K:Lcom/mycompany/app/curl/CurlView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Lcom/mycompany/app/image/ImageViewControl;->z(Z)V

    .line 10
    .line 11
    .line 12
    const v0, 0xc350

    .line 13
    .line 14
    .line 15
    iput v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->k0:I

    .line 16
    .line 17
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->K:Lcom/mycompany/app/curl/CurlView;

    .line 18
    .line 19
    iget v2, v1, Lcom/mycompany/app/curl/CurlView;->l:I

    .line 20
    .line 21
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iput v0, v1, Lcom/mycompany/app/curl/CurlView;->m:I

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/mycompany/app/curl/CurlView;->d()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final Z0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->Q:Lcom/mycompany/app/view/MyButtonImage;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    .line 7
    .line 8
    const/16 v1, 0xc

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->T0()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 23
    .line 24
    if-eqz v0, :cond_6

    .line 25
    .line 26
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 27
    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_3
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/mycompany/app/compress/Compress;->n(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->Y5(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->W3(Ljava/lang/String;Z)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v1, "gif"

    .line 46
    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_4

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_4
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->S0()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_5

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_5
    move v3, v2

    .line 62
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->Q:Lcom/mycompany/app/view/MyButtonImage;

    .line 63
    .line 64
    invoke-virtual {v0, v3, v2}, Lcom/mycompany/app/view/MyButtonImage;->r(ZZ)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->l0:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-boolean v0, v0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->l:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    return v0

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method public final a1()V
    .locals 8

    .line 1
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 2
    .line 3
    if-eqz v1, :cond_f

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->K:Lcom/mycompany/app/curl/CurlView;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->P0()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    goto/16 :goto_2

    .line 18
    .line 19
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->U:Lcom/mycompany/app/image/ImageCoverView;

    .line 20
    .line 21
    if-eqz v1, :cond_f

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/mycompany/app/image/ImageCoverView;->d()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    goto/16 :goto_2

    .line 30
    .line 31
    :cond_2
    const/4 v1, 0x1

    .line 32
    iput-boolean v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->K0:Z

    .line 33
    .line 34
    iget v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 35
    .line 36
    iget v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    iput v4, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->A:I

    .line 40
    .line 41
    iget v5, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 42
    .line 43
    if-nez v5, :cond_3

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->R0()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_f

    .line 50
    .line 51
    iget-object v5, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 52
    .line 53
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 54
    .line 55
    iget v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 56
    .line 57
    iget v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 58
    .line 59
    const/4 v7, 0x0

    .line 60
    const/4 v4, 0x2

    .line 61
    const/4 v6, 0x0

    .line 62
    move-object v0, p0

    .line 63
    invoke-virtual/range {v0 .. v7}, Lcom/mycompany/app/image/ImageViewPageEffect;->c1(IIIILjava/lang/String;ZZ)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_3
    iget-object v5, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 68
    .line 69
    invoke-static {v5}, Lcom/mycompany/app/main/MainUtil;->H5(Lcom/mycompany/app/main/MainActivity;)Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-nez v5, :cond_7

    .line 74
    .line 75
    iget-boolean v5, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->f:Z

    .line 76
    .line 77
    if-eqz v5, :cond_5

    .line 78
    .line 79
    iget v5, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 80
    .line 81
    iget v6, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 82
    .line 83
    sub-int/2addr v6, v1

    .line 84
    if-ne v5, v6, :cond_4

    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->R0()Z

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    if-eqz v5, :cond_4

    .line 91
    .line 92
    iget-object v5, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 93
    .line 94
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 95
    .line 96
    iget v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 97
    .line 98
    iget v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 99
    .line 100
    const/4 v7, 0x0

    .line 101
    const/4 v4, 0x2

    .line 102
    const/4 v6, 0x0

    .line 103
    move-object v0, p0

    .line 104
    invoke-virtual/range {v0 .. v7}, Lcom/mycompany/app/image/ImageViewPageEffect;->c1(IIIILjava/lang/String;ZZ)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_4
    iget v5, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 109
    .line 110
    add-int/2addr v5, v1

    .line 111
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 112
    .line 113
    rem-int/2addr v5, v1

    .line 114
    iput v5, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 115
    .line 116
    goto/16 :goto_1

    .line 117
    .line 118
    :cond_5
    iget v5, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 119
    .line 120
    if-nez v5, :cond_6

    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->R0()Z

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    if-eqz v5, :cond_6

    .line 127
    .line 128
    iget-object v5, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 129
    .line 130
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 131
    .line 132
    iget v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 133
    .line 134
    iget v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 135
    .line 136
    const/4 v7, 0x0

    .line 137
    const/4 v4, 0x2

    .line 138
    const/4 v6, 0x0

    .line 139
    move-object v0, p0

    .line 140
    invoke-virtual/range {v0 .. v7}, Lcom/mycompany/app/image/ImageViewPageEffect;->c1(IIIILjava/lang/String;ZZ)V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :cond_6
    iget v5, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 145
    .line 146
    iget v6, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 147
    .line 148
    invoke-static {v5, v6, v1, v6}, Landroid/support/v4/media/a;->B(IIII)I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    iput v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 153
    .line 154
    goto/16 :goto_1

    .line 155
    .line 156
    :cond_7
    iget v5, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 157
    .line 158
    const/4 v6, 0x4

    .line 159
    if-ne v5, v6, :cond_8

    .line 160
    .line 161
    const/4 v1, 0x3

    .line 162
    iput v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_8
    iget-boolean v5, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->f:Z

    .line 166
    .line 167
    if-eqz v5, :cond_a

    .line 168
    .line 169
    iget v5, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 170
    .line 171
    iget v7, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 172
    .line 173
    sub-int/2addr v7, v1

    .line 174
    if-ne v5, v7, :cond_9

    .line 175
    .line 176
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->R0()Z

    .line 177
    .line 178
    .line 179
    move-result v5

    .line 180
    if-eqz v5, :cond_9

    .line 181
    .line 182
    iget-object v5, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 183
    .line 184
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 185
    .line 186
    iget v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 187
    .line 188
    iget v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 189
    .line 190
    const/4 v7, 0x0

    .line 191
    const/4 v4, 0x2

    .line 192
    const/4 v6, 0x0

    .line 193
    move-object v0, p0

    .line 194
    invoke-virtual/range {v0 .. v7}, Lcom/mycompany/app/image/ImageViewPageEffect;->c1(IIIILjava/lang/String;ZZ)V

    .line 195
    .line 196
    .line 197
    return-void

    .line 198
    :cond_9
    iget v5, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 199
    .line 200
    add-int/2addr v5, v1

    .line 201
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 202
    .line 203
    rem-int/2addr v5, v1

    .line 204
    iput v5, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 205
    .line 206
    goto :goto_0

    .line 207
    :cond_a
    iget v5, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 208
    .line 209
    if-nez v5, :cond_b

    .line 210
    .line 211
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->R0()Z

    .line 212
    .line 213
    .line 214
    move-result v5

    .line 215
    if-eqz v5, :cond_b

    .line 216
    .line 217
    iget-object v5, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 218
    .line 219
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 220
    .line 221
    iget v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 222
    .line 223
    iget v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 224
    .line 225
    const/4 v7, 0x0

    .line 226
    const/4 v4, 0x2

    .line 227
    const/4 v6, 0x0

    .line 228
    move-object v0, p0

    .line 229
    invoke-virtual/range {v0 .. v7}, Lcom/mycompany/app/image/ImageViewPageEffect;->c1(IIIILjava/lang/String;ZZ)V

    .line 230
    .line 231
    .line 232
    return-void

    .line 233
    :cond_b
    iget v5, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 234
    .line 235
    iget v7, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 236
    .line 237
    invoke-static {v5, v7, v1, v7}, Landroid/support/v4/media/a;->B(IIII)I

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    iput v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 242
    .line 243
    :goto_0
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 244
    .line 245
    iget v5, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 246
    .line 247
    invoke-virtual {v1, v5}, Lcom/mycompany/app/compress/Compress;->g(I)Lcom/mycompany/app/compress/CompressCache$BitmapInfo;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    if-eqz v1, :cond_d

    .line 252
    .line 253
    iget v5, v1, Lcom/mycompany/app/compress/CompressCache$BitmapInfo;->a:I

    .line 254
    .line 255
    iget v1, v1, Lcom/mycompany/app/compress/CompressCache$BitmapInfo;->b:I

    .line 256
    .line 257
    if-le v5, v1, :cond_c

    .line 258
    .line 259
    iput v6, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 260
    .line 261
    goto :goto_1

    .line 262
    :cond_c
    const/4 v1, 0x2

    .line 263
    iput v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 264
    .line 265
    goto :goto_1

    .line 266
    :cond_d
    iput v4, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 267
    .line 268
    iput v6, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->A:I

    .line 269
    .line 270
    :goto_1
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 271
    .line 272
    if-ne v2, v1, :cond_e

    .line 273
    .line 274
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 275
    .line 276
    if-ne v3, v1, :cond_e

    .line 277
    .line 278
    goto :goto_2

    .line 279
    :cond_e
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->U:Lcom/mycompany/app/image/ImageCoverView;

    .line 280
    .line 281
    iget-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->N:Landroid/widget/FrameLayout;

    .line 282
    .line 283
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->o0()I

    .line 284
    .line 285
    .line 286
    move-result v3

    .line 287
    invoke-virtual {v1, v3, v2, v4}, Lcom/mycompany/app/image/ImageCoverView;->b(ILandroid/view/View;Z)V

    .line 288
    .line 289
    .line 290
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 291
    .line 292
    iget v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 293
    .line 294
    iget v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 295
    .line 296
    iget v4, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 297
    .line 298
    invoke-virtual {v1, v2, v3, v4}, Lcom/mycompany/app/image/ImageViewControl;->t(III)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->Y0()V

    .line 302
    .line 303
    .line 304
    :cond_f
    :goto_2
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->O0()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->j1()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->U0()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->j1()V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method public final b1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->P:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->m1()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p0, v2}, Lcom/mycompany/app/image/ImageViewPageEffect;->o1(Z)V

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {p0, v2}, Lcom/mycompany/app/image/ImageViewPageEffect;->j0(Z)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final c(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->R:Lcom/mycompany/app/image/ImageGifView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->D0:Z

    .line 7
    .line 8
    iput-boolean v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->E0:Z

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v2, 0x1

    .line 16
    if-nez v0, :cond_5

    .line 17
    .line 18
    iget-object v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 19
    .line 20
    if-eqz v3, :cond_2

    .line 21
    .line 22
    iget-object v4, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 23
    .line 24
    if-nez v4, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {v3}, Lcom/mycompany/app/main/MainActivity;->i0()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-nez v3, :cond_3

    .line 32
    .line 33
    :cond_2
    :goto_0
    move v3, v1

    .line 34
    goto :goto_2

    .line 35
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    sget v4, Lcom/mycompany/app/main/MainApp;->D1:I

    .line 40
    .line 41
    int-to-float v4, v4

    .line 42
    cmpg-float v4, v3, v4

    .line 43
    .line 44
    if-gez v4, :cond_4

    .line 45
    .line 46
    :goto_1
    move v3, v2

    .line 47
    goto :goto_2

    .line 48
    :cond_4
    iget-object v4, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 49
    .line 50
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    sget v5, Lcom/mycompany/app/main/MainApp;->D1:I

    .line 55
    .line 56
    sub-int/2addr v4, v5

    .line 57
    int-to-float v4, v4

    .line 58
    cmpl-float v3, v3, v4

    .line 59
    .line 60
    if-lez v3, :cond_2

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :goto_2
    iput-boolean v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->E0:Z

    .line 64
    .line 65
    goto :goto_4

    .line 66
    :cond_5
    if-eq v0, v2, :cond_7

    .line 67
    .line 68
    const/4 v3, 0x3

    .line 69
    if-ne v0, v3, :cond_6

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_6
    iput-boolean v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->D0:Z

    .line 73
    .line 74
    goto :goto_4

    .line 75
    :cond_7
    :goto_3
    iput-boolean v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->D0:Z

    .line 76
    .line 77
    iput-boolean v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->E0:Z

    .line 78
    .line 79
    invoke-virtual {p0, v2}, Lcom/mycompany/app/image/ImageViewPageEffect;->i1(Z)V

    .line 80
    .line 81
    .line 82
    iget-object v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 83
    .line 84
    if-eqz v3, :cond_8

    .line 85
    .line 86
    invoke-virtual {v3}, Lcom/mycompany/app/view/MyFadeRelative;->h()V

    .line 87
    .line 88
    .line 89
    :cond_8
    :goto_4
    iget-boolean v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->e0:Z

    .line 90
    .line 91
    if-eqz v3, :cond_1a

    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->P0()Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-eqz v3, :cond_9

    .line 98
    .line 99
    goto/16 :goto_e

    .line 100
    .line 101
    :cond_9
    iget-boolean v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->K0:Z

    .line 102
    .line 103
    if-eqz v3, :cond_f

    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->T0()Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-eqz v3, :cond_f

    .line 110
    .line 111
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->T0:Lcom/mycompany/app/image/ImageTransView;

    .line 112
    .line 113
    if-nez v0, :cond_a

    .line 114
    .line 115
    :goto_5
    move v0, v1

    .line 116
    goto :goto_6

    .line 117
    :cond_a
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->O0()Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_b

    .line 122
    .line 123
    goto :goto_5

    .line 124
    :cond_b
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->T0:Lcom/mycompany/app/image/ImageTransView;

    .line 125
    .line 126
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    float-to-int v3, v3

    .line 131
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    float-to-int v4, v4

    .line 136
    sget v5, Lcom/mycompany/app/main/MainApp;->C1:I

    .line 137
    .line 138
    invoke-static {v3, v4, v5, v0}, Lcom/mycompany/app/main/MainUtil;->J5(IIILandroid/view/View;)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    :goto_6
    if-eqz v0, :cond_c

    .line 143
    .line 144
    move v1, v2

    .line 145
    goto :goto_7

    .line 146
    :cond_c
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 147
    .line 148
    if-nez v0, :cond_d

    .line 149
    .line 150
    goto :goto_7

    .line 151
    :cond_d
    invoke-virtual {v0, p1}, Lcom/mycompany/app/image/ImageViewControl;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    :goto_7
    if-eqz v1, :cond_e

    .line 156
    .line 157
    goto/16 :goto_10

    .line 158
    .line 159
    :cond_e
    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/image/ImageViewPageEffect;->D(Landroid/view/MotionEvent;Z)V

    .line 160
    .line 161
    .line 162
    return v2

    .line 163
    :cond_f
    iget-object v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 164
    .line 165
    if-nez v3, :cond_10

    .line 166
    .line 167
    iget-object v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 168
    .line 169
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->s4(Landroid/content/Context;)Landroid/graphics/Point;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    goto :goto_8

    .line 174
    :cond_10
    iget-object v3, v3, Lcom/mycompany/app/main/MainActivity;->z0:Landroid/graphics/Point;

    .line 175
    .line 176
    :goto_8
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->O0()Z

    .line 177
    .line 178
    .line 179
    move-result v4

    .line 180
    invoke-static {v3, p1, v4}, Lcom/mycompany/app/main/MainUtil;->g(Landroid/graphics/Point;Landroid/view/MotionEvent;Z)Z

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    if-eqz v3, :cond_15

    .line 185
    .line 186
    iget-object v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->T0:Lcom/mycompany/app/image/ImageTransView;

    .line 187
    .line 188
    if-nez v3, :cond_11

    .line 189
    .line 190
    :goto_9
    move v3, v1

    .line 191
    goto :goto_a

    .line 192
    :cond_11
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->O0()Z

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    if-eqz v3, :cond_12

    .line 197
    .line 198
    goto :goto_9

    .line 199
    :cond_12
    iget-object v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->T0:Lcom/mycompany/app/image/ImageTransView;

    .line 200
    .line 201
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 202
    .line 203
    .line 204
    move-result v4

    .line 205
    float-to-int v4, v4

    .line 206
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 207
    .line 208
    .line 209
    move-result v5

    .line 210
    float-to-int v5, v5

    .line 211
    sget v6, Lcom/mycompany/app/main/MainApp;->C1:I

    .line 212
    .line 213
    invoke-static {v4, v5, v6, v3}, Lcom/mycompany/app/main/MainUtil;->J5(IIILandroid/view/View;)Z

    .line 214
    .line 215
    .line 216
    move-result v3

    .line 217
    :goto_a
    if-eqz v3, :cond_13

    .line 218
    .line 219
    move v3, v2

    .line 220
    goto :goto_b

    .line 221
    :cond_13
    iget-object v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 222
    .line 223
    if-nez v3, :cond_14

    .line 224
    .line 225
    move v3, v1

    .line 226
    goto :goto_b

    .line 227
    :cond_14
    invoke-virtual {v3, p1}, Lcom/mycompany/app/image/ImageViewControl;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    :goto_b
    if-nez v3, :cond_15

    .line 232
    .line 233
    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/image/ImageViewPageEffect;->D(Landroid/view/MotionEvent;Z)V

    .line 234
    .line 235
    .line 236
    return v2

    .line 237
    :cond_15
    if-nez v0, :cond_16

    .line 238
    .line 239
    iput-boolean v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->K0:Z

    .line 240
    .line 241
    goto :goto_c

    .line 242
    :cond_16
    const/4 v2, 0x5

    .line 243
    if-ne v0, v2, :cond_17

    .line 244
    .line 245
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->T0()Z

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    if-eqz v0, :cond_17

    .line 250
    .line 251
    goto :goto_d

    .line 252
    :cond_17
    :goto_c
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 253
    .line 254
    if-eqz v0, :cond_18

    .line 255
    .line 256
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewControl;->C()V

    .line 257
    .line 258
    .line 259
    :cond_18
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->L0:Landroid/view/GestureDetector;

    .line 260
    .line 261
    if-eqz v0, :cond_19

    .line 262
    .line 263
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 264
    .line 265
    .line 266
    :cond_19
    :goto_d
    return v1

    .line 267
    :cond_1a
    :goto_e
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->T0:Lcom/mycompany/app/image/ImageTransView;

    .line 268
    .line 269
    if-nez v0, :cond_1b

    .line 270
    .line 271
    goto :goto_f

    .line 272
    :cond_1b
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->O0()Z

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    if-eqz v0, :cond_1c

    .line 277
    .line 278
    goto :goto_f

    .line 279
    :cond_1c
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->T0:Lcom/mycompany/app/image/ImageTransView;

    .line 280
    .line 281
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    float-to-int v1, v1

    .line 286
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 287
    .line 288
    .line 289
    move-result v3

    .line 290
    float-to-int v3, v3

    .line 291
    sget v4, Lcom/mycompany/app/main/MainApp;->C1:I

    .line 292
    .line 293
    invoke-static {v1, v3, v4, v0}, Lcom/mycompany/app/main/MainUtil;->J5(IIILandroid/view/View;)Z

    .line 294
    .line 295
    .line 296
    move-result v1

    .line 297
    :goto_f
    if-eqz v1, :cond_1f

    .line 298
    .line 299
    iget-boolean p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->e0:Z

    .line 300
    .line 301
    if-nez p1, :cond_1d

    .line 302
    .line 303
    goto :goto_10

    .line 304
    :cond_1d
    iget-boolean p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->D0:Z

    .line 305
    .line 306
    if-nez p1, :cond_1e

    .line 307
    .line 308
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 309
    .line 310
    sget v0, Lnet/kaki87/soul2/testing/R$string;->wait_retry:I

    .line 311
    .line 312
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 313
    .line 314
    .line 315
    :cond_1e
    :goto_10
    return v2

    .line 316
    :cond_1f
    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/image/ImageViewPageEffect;->D(Landroid/view/MotionEvent;Z)V

    .line 317
    .line 318
    .line 319
    return v2
.end method

.method public final c0(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 2
    .line 3
    if-eqz v0, :cond_12

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->K:Lcom/mycompany/app/curl/CurlView;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_9

    .line 10
    .line 11
    :cond_0
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->p:I

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/mycompany/app/compress/Compress;->n(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    goto/16 :goto_9

    .line 26
    .line 27
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->R0()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/4 v2, 0x1

    .line 32
    const/4 v3, 0x0

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    if-ltz p1, :cond_12

    .line 36
    .line 37
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 38
    .line 39
    if-lt p1, v1, :cond_4

    .line 40
    .line 41
    goto/16 :goto_9

    .line 42
    .line 43
    :cond_2
    if-gez p1, :cond_3

    .line 44
    .line 45
    iget p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 46
    .line 47
    sub-int/2addr p1, v2

    .line 48
    goto :goto_0

    .line 49
    :cond_3
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 50
    .line 51
    if-lt p1, v1, :cond_4

    .line 52
    .line 53
    move p1, v3

    .line 54
    :cond_4
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->K:Lcom/mycompany/app/curl/CurlView;

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/mycompany/app/curl/CurlView;->getPageList()Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    if-eqz v1, :cond_5

    .line 61
    .line 62
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    goto :goto_1

    .line 67
    :cond_5
    move v4, v3

    .line 68
    :goto_1
    move v5, v3

    .line 69
    :goto_2
    if-ge v5, v4, :cond_9

    .line 70
    .line 71
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    check-cast v6, Lcom/mycompany/app/curl/CurlMesh;

    .line 76
    .line 77
    if-nez v6, :cond_6

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_6
    iget-object v6, v6, Lcom/mycompany/app/curl/CurlMesh;->C:Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 81
    .line 82
    if-nez v6, :cond_7

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_7
    iget v6, v6, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 86
    .line 87
    if-ne p1, v6, :cond_8

    .line 88
    .line 89
    goto/16 :goto_9

    .line 90
    .line 91
    :cond_8
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_9
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->j0:Ljava/util/ArrayList;

    .line 95
    .line 96
    if-eqz v1, :cond_d

    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-nez v1, :cond_d

    .line 103
    .line 104
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->a:Ljava/lang/Object;

    .line 105
    .line 106
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    .line 108
    .line 109
    iget-object v5, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->j0:Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    move v6, v3

    .line 119
    :cond_a
    :goto_4
    if-ge v6, v5, :cond_c

    .line 120
    .line 121
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    add-int/lit8 v6, v6, 0x1

    .line 126
    .line 127
    check-cast v7, Landroid/widget/ImageView;

    .line 128
    .line 129
    if-nez v7, :cond_b

    .line 130
    .line 131
    goto :goto_4

    .line 132
    :cond_b
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    check-cast v7, Ljava/lang/Integer;

    .line 137
    .line 138
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 139
    .line 140
    .line 141
    move-result v7

    .line 142
    if-ne p1, v7, :cond_a

    .line 143
    .line 144
    monitor-exit v1

    .line 145
    return-void

    .line 146
    :catchall_0
    move-exception p1

    .line 147
    goto :goto_5

    .line 148
    :cond_c
    monitor-exit v1

    .line 149
    goto :goto_6

    .line 150
    :goto_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 152
    :cond_d
    :goto_6
    new-instance v1, Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 153
    .line 154
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 155
    .line 156
    .line 157
    const/16 v4, 0x8

    .line 158
    .line 159
    iput v4, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->a:I

    .line 160
    .line 161
    iput-object v0, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->b:Lcom/mycompany/app/compress/Compress;

    .line 162
    .line 163
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->m:Ljava/lang/String;

    .line 164
    .line 165
    iput-object v0, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->r:Ljava/lang/String;

    .line 166
    .line 167
    iput p1, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 168
    .line 169
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 170
    .line 171
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->Q0()Z

    .line 172
    .line 173
    .line 174
    move-result v4

    .line 175
    iget v5, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    .line 176
    .line 177
    const/4 v6, 0x2

    .line 178
    if-ne v5, v6, :cond_e

    .line 179
    .line 180
    move v5, v2

    .line 181
    goto :goto_7

    .line 182
    :cond_e
    move v5, v3

    .line 183
    :goto_7
    invoke-static {v0, v4, v5}, Lcom/mycompany/app/main/MainUtil;->l0(Landroid/content/Context;ZZ)I

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    iput v0, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->t:I

    .line 188
    .line 189
    iget v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    .line 190
    .line 191
    const/16 v4, 0xc

    .line 192
    .line 193
    if-ne v0, v4, :cond_f

    .line 194
    .line 195
    goto :goto_8

    .line 196
    :cond_f
    move v2, v3

    .line 197
    :goto_8
    iput-boolean v2, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->u:Z

    .line 198
    .line 199
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 200
    .line 201
    if-nez v0, :cond_10

    .line 202
    .line 203
    goto :goto_9

    .line 204
    :cond_10
    new-instance v0, Landroid/widget/ImageView;

    .line 205
    .line 206
    iget-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 207
    .line 208
    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 209
    .line 210
    .line 211
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->j0:Ljava/util/ArrayList;

    .line 219
    .line 220
    if-nez p1, :cond_11

    .line 221
    .line 222
    new-instance p1, Ljava/util/ArrayList;

    .line 223
    .line 224
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .line 226
    .line 227
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->j0:Ljava/util/ArrayList;

    .line 228
    .line 229
    :cond_11
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->j0:Ljava/util/ArrayList;

    .line 230
    .line 231
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    iget-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c0:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 239
    .line 240
    new-instance v3, Lcom/mycompany/app/image/ImageViewPageEffect$25;

    .line 241
    .line 242
    invoke-direct {v3, p0}, Lcom/mycompany/app/image/ImageViewPageEffect$25;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->c(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;)V

    .line 246
    .line 247
    .line 248
    :catch_0
    :cond_12
    :goto_9
    return-void
.end method

.method public final c1(IIIILjava/lang/String;ZZ)V
    .locals 10

    .line 1
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 2
    .line 3
    if-nez v1, :cond_0

    .line 4
    .line 5
    goto/16 :goto_7

    .line 6
    .line 7
    :cond_0
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    const/4 v3, 0x2

    .line 11
    const/4 v7, 0x1

    .line 12
    if-eq v1, v7, :cond_1

    .line 13
    .line 14
    if-eq v1, v3, :cond_1

    .line 15
    .line 16
    if-eq v1, v2, :cond_1

    .line 17
    .line 18
    goto/16 :goto_7

    .line 19
    .line 20
    :cond_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    goto/16 :goto_7

    .line 27
    .line 28
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/mycompany/app/compress/Compress;->l()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v8

    .line 34
    if-eqz v8, :cond_1d

    .line 35
    .line 36
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-ge v1, v3, :cond_3

    .line 41
    .line 42
    goto/16 :goto_7

    .line 43
    .line 44
    :cond_3
    const/4 v9, 0x0

    .line 45
    if-ne p4, v7, :cond_5

    .line 46
    .line 47
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->U:Lcom/mycompany/app/image/ImageCoverView;

    .line 48
    .line 49
    if-eqz v0, :cond_1d

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageCoverView;->d()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_4

    .line 56
    .line 57
    goto/16 :goto_7

    .line 58
    .line 59
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->U:Lcom/mycompany/app/image/ImageCoverView;

    .line 60
    .line 61
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->N:Landroid/widget/FrameLayout;

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->o0()I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    invoke-virtual {v0, v4, v1, v7}, Lcom/mycompany/app/image/ImageCoverView;->b(ILandroid/view/View;Z)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_5
    if-ne p4, v3, :cond_7

    .line 72
    .line 73
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->U:Lcom/mycompany/app/image/ImageCoverView;

    .line 74
    .line 75
    if-eqz v0, :cond_1d

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageCoverView;->d()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_6

    .line 82
    .line 83
    goto/16 :goto_7

    .line 84
    .line 85
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->U:Lcom/mycompany/app/image/ImageCoverView;

    .line 86
    .line 87
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->N:Landroid/widget/FrameLayout;

    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->o0()I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    invoke-virtual {v0, v4, v1, v9}, Lcom/mycompany/app/image/ImageCoverView;->b(ILandroid/view/View;Z)V

    .line 94
    .line 95
    .line 96
    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 97
    .line 98
    if-eqz v0, :cond_8

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewControl;->A()V

    .line 101
    .line 102
    .line 103
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->T:Lcom/mycompany/app/view/MyCoverView;

    .line 104
    .line 105
    if-eqz v0, :cond_9

    .line 106
    .line 107
    invoke-virtual {v0, v7}, Lcom/mycompany/app/view/MyCoverView;->m(Z)V

    .line 108
    .line 109
    .line 110
    :cond_9
    iget v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    .line 111
    .line 112
    if-ne v0, v7, :cond_a

    .line 113
    .line 114
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 115
    .line 116
    int-to-long v2, p1

    .line 117
    int-to-long v4, p2

    .line 118
    move v6, p3

    .line 119
    move-object v1, p5

    .line 120
    invoke-static/range {v0 .. v6}, Lcom/mycompany/app/db/DbAlbum;->e(Landroid/content/Context;Ljava/lang/String;JJI)V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_a
    if-ne v0, v3, :cond_b

    .line 125
    .line 126
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 127
    .line 128
    int-to-long v2, p1

    .line 129
    int-to-long v4, p2

    .line 130
    move v6, p3

    .line 131
    move-object v1, p5

    .line 132
    invoke-static/range {v0 .. v6}, Lcom/mycompany/app/db/DbPdf;->f(Landroid/content/Context;Ljava/lang/String;JJI)V

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_b
    if-ne v0, v2, :cond_c

    .line 137
    .line 138
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 139
    .line 140
    int-to-long v2, p1

    .line 141
    int-to-long v4, p2

    .line 142
    move v6, p3

    .line 143
    move-object v1, p5

    .line 144
    invoke-static/range {v0 .. v6}, Lcom/mycompany/app/db/DbCmp;->f(Landroid/content/Context;Ljava/lang/String;JJI)V

    .line 145
    .line 146
    .line 147
    :cond_c
    :goto_1
    iget p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->t:I

    .line 148
    .line 149
    if-ltz p1, :cond_d

    .line 150
    .line 151
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 152
    .line 153
    .line 154
    move-result p2

    .line 155
    if-ge p1, p2, :cond_d

    .line 156
    .line 157
    move p1, v7

    .line 158
    goto :goto_2

    .line 159
    :cond_d
    move p1, v9

    .line 160
    :goto_2
    if-eqz p1, :cond_e

    .line 161
    .line 162
    iget p2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->t:I

    .line 163
    .line 164
    invoke-interface {v8, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    check-cast p2, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 169
    .line 170
    if-eqz p2, :cond_e

    .line 171
    .line 172
    iget-object p2, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_e
    const/4 p2, 0x0

    .line 176
    :goto_3
    const/4 p3, -0x1

    .line 177
    if-eqz p1, :cond_10

    .line 178
    .line 179
    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    if-nez p1, :cond_f

    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_f
    move p1, v9

    .line 187
    goto :goto_5

    .line 188
    :cond_10
    :goto_4
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 189
    .line 190
    invoke-virtual {p1, p5}, Lcom/mycompany/app/compress/Compress;->j(Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    if-eq p1, p3, :cond_11

    .line 195
    .line 196
    iput p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->t:I

    .line 197
    .line 198
    :cond_11
    iget p2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->t:I

    .line 199
    .line 200
    if-eq p2, p3, :cond_12

    .line 201
    .line 202
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    if-lt p2, v0, :cond_13

    .line 207
    .line 208
    :cond_12
    iput v9, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->t:I

    .line 209
    .line 210
    :cond_13
    :goto_5
    if-eq p1, p3, :cond_17

    .line 211
    .line 212
    if-eqz p6, :cond_15

    .line 213
    .line 214
    iget-boolean p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->f:Z

    .line 215
    .line 216
    if-eqz p1, :cond_14

    .line 217
    .line 218
    iget p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->t:I

    .line 219
    .line 220
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 221
    .line 222
    .line 223
    move-result p2

    .line 224
    add-int/2addr p2, p1

    .line 225
    sub-int/2addr p2, v7

    .line 226
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 227
    .line 228
    .line 229
    move-result p1

    .line 230
    rem-int/2addr p2, p1

    .line 231
    iput p2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->t:I

    .line 232
    .line 233
    iput p3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 234
    .line 235
    goto :goto_6

    .line 236
    :cond_14
    iget p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->t:I

    .line 237
    .line 238
    add-int/2addr p1, v7

    .line 239
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 240
    .line 241
    .line 242
    move-result p2

    .line 243
    rem-int/2addr p1, p2

    .line 244
    iput p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->t:I

    .line 245
    .line 246
    iput v9, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 247
    .line 248
    goto :goto_6

    .line 249
    :cond_15
    iget-boolean p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->f:Z

    .line 250
    .line 251
    if-eqz p1, :cond_16

    .line 252
    .line 253
    iget p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->t:I

    .line 254
    .line 255
    add-int/2addr p1, v7

    .line 256
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 257
    .line 258
    .line 259
    move-result p2

    .line 260
    rem-int/2addr p1, p2

    .line 261
    iput p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->t:I

    .line 262
    .line 263
    iput v9, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 264
    .line 265
    goto :goto_6

    .line 266
    :cond_16
    iget p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->t:I

    .line 267
    .line 268
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 269
    .line 270
    .line 271
    move-result p2

    .line 272
    add-int/2addr p2, p1

    .line 273
    sub-int/2addr p2, v7

    .line 274
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 275
    .line 276
    .line 277
    move-result p1

    .line 278
    rem-int/2addr p2, p1

    .line 279
    iput p2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->t:I

    .line 280
    .line 281
    iput p3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 282
    .line 283
    goto :goto_6

    .line 284
    :cond_17
    if-eqz p6, :cond_19

    .line 285
    .line 286
    iget-boolean p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->f:Z

    .line 287
    .line 288
    if-eqz p1, :cond_18

    .line 289
    .line 290
    iput p3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 291
    .line 292
    goto :goto_6

    .line 293
    :cond_18
    iput v9, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 294
    .line 295
    goto :goto_6

    .line 296
    :cond_19
    iget-boolean p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->f:Z

    .line 297
    .line 298
    if-eqz p1, :cond_1a

    .line 299
    .line 300
    iput v9, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 301
    .line 302
    goto :goto_6

    .line 303
    :cond_1a
    iput p3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 304
    .line 305
    :goto_6
    iput v9, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 306
    .line 307
    iget p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->t:I

    .line 308
    .line 309
    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    check-cast p1, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 314
    .line 315
    if-nez p1, :cond_1b

    .line 316
    .line 317
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->T:Lcom/mycompany/app/view/MyCoverView;

    .line 318
    .line 319
    if-eqz p1, :cond_1d

    .line 320
    .line 321
    invoke-virtual {p1, v7}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 322
    .line 323
    .line 324
    return-void

    .line 325
    :cond_1b
    move/from16 p2, p7

    .line 326
    .line 327
    invoke-virtual {p0, p1, p2}, Lcom/mycompany/app/image/ImageViewPageEffect;->n0(Lcom/mycompany/app/main/MainItem$ChildItem;Z)V

    .line 328
    .line 329
    .line 330
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->T:Lcom/mycompany/app/view/MyCoverView;

    .line 331
    .line 332
    if-eqz p1, :cond_1c

    .line 333
    .line 334
    iget-object p2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->u:Ljava/lang/String;

    .line 335
    .line 336
    sget p3, Lcom/mycompany/app/pref/PrefImage;->B:I

    .line 337
    .line 338
    invoke-virtual {p1, p3, p2}, Lcom/mycompany/app/view/MyCoverView;->j(ILjava/lang/String;)V

    .line 339
    .line 340
    .line 341
    :cond_1c
    invoke-virtual {p0, v9}, Lcom/mycompany/app/image/ImageViewPageEffect;->j0(Z)V

    .line 342
    .line 343
    .line 344
    :cond_1d
    :goto_7
    return-void
.end method

.method public final controlRotate(Landroid/view/View;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_2

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->M0()V

    .line 13
    .line 14
    .line 15
    if-nez p1, :cond_2

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyFadeRelative;->setAutoHide(Z)V

    .line 24
    .line 25
    .line 26
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 32
    .line 33
    sget v2, Lnet/kaki87/soul2/testing/R$string;->rotation:I

    .line 34
    .line 35
    sget v3, Lcom/mycompany/app/pref/PrefImage;->l:I

    .line 36
    .line 37
    const/4 v4, 0x1

    .line 38
    if-nez v3, :cond_4

    .line 39
    .line 40
    move v3, v4

    .line 41
    goto :goto_0

    .line 42
    :cond_4
    move v3, v1

    .line 43
    :goto_0
    invoke-direct {v0, v1, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 50
    .line 51
    sget v2, Lnet/kaki87/soul2/testing/R$string;->view_port:I

    .line 52
    .line 53
    sget v3, Lcom/mycompany/app/pref/PrefImage;->l:I

    .line 54
    .line 55
    if-ne v3, v4, :cond_5

    .line 56
    .line 57
    move v3, v4

    .line 58
    goto :goto_1

    .line 59
    :cond_5
    move v3, v1

    .line 60
    :goto_1
    invoke-direct {v0, v4, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 67
    .line 68
    sget v2, Lnet/kaki87/soul2/testing/R$string;->view_land:I

    .line 69
    .line 70
    sget v3, Lcom/mycompany/app/pref/PrefImage;->l:I

    .line 71
    .line 72
    const/4 v5, 0x2

    .line 73
    if-ne v3, v5, :cond_6

    .line 74
    .line 75
    move v1, v4

    .line 76
    :cond_6
    invoke-direct {v0, v5, v2, v1}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    new-instance v2, Lcom/mycompany/app/view/MyPopupMenu;

    .line 83
    .line 84
    iget-object v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 85
    .line 86
    iget-object v4, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 87
    .line 88
    new-instance v8, Lcom/mycompany/app/image/ImageViewPageEffect$34;

    .line 89
    .line 90
    invoke-direct {v8, p0}, Lcom/mycompany/app/image/ImageViewPageEffect$34;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 91
    .line 92
    .line 93
    const/4 v7, 0x1

    .line 94
    move-object v5, p1

    .line 95
    invoke-direct/range {v2 .. v8}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 96
    .line 97
    .line 98
    iput-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 99
    .line 100
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 101
    .line 102
    if-eqz p1, :cond_7

    .line 103
    .line 104
    iput-object v2, p1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 105
    .line 106
    :cond_7
    :goto_2
    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->k0()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final d0(Lcom/mycompany/app/main/MainItem$ViewItem;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->n:Z

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    if-eqz p1, :cond_4

    .line 6
    .line 7
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->a:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->o:Ljava/util/ArrayList;

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    new-instance v1, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->o:Ljava/util/ArrayList;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    iget v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    if-ne v1, v2, :cond_2

    .line 36
    .line 37
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    return-void

    .line 39
    :cond_2
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 40
    .line 41
    iget p1, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 42
    .line 43
    invoke-virtual {v1, p1}, Lcom/mycompany/app/compress/Compress;->n(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 54
    return-void

    .line 55
    :cond_3
    :try_start_4
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->o:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 58
    .line 59
    .line 60
    :catch_0
    :try_start_5
    monitor-exit v0

    .line 61
    goto :goto_2

    .line 62
    :goto_1
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 63
    throw p1

    .line 64
    :cond_4
    :goto_2
    return-void
.end method

.method public final d1(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->W:I

    .line 7
    .line 8
    iput p2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->X:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->Z0()V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyFadeRelative;->e()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->k1()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 26
    .line 27
    const/4 p2, 0x1

    .line 28
    invoke-virtual {p1, p2}, Lcom/mycompany/app/image/ImageViewControl;->z(Z)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 32
    .line 33
    new-instance p2, Lcom/mycompany/app/image/ImageViewPageEffect$21;

    .line 34
    .line 35
    invoke-direct {p2, p0}, Lcom/mycompany/app/image/ImageViewPageEffect$21;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final e()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, -0x1

    .line 14
    return v0

    .line 15
    :cond_1
    :goto_0
    iget v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->t:I

    .line 16
    .line 17
    return v0
.end method

.method public final e0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->K:Lcom/mycompany/app/curl/CurlView;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Lcom/mycompany/app/curl/CurlView;->getPageList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v2, v1

    .line 18
    :goto_0
    if-ge v1, v2, :cond_4

    .line 19
    .line 20
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Lcom/mycompany/app/curl/CurlMesh;

    .line 25
    .line 26
    if-nez v3, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    iget-object v3, v3, Lcom/mycompany/app/curl/CurlMesh;->C:Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 30
    .line 31
    if-eqz v3, :cond_3

    .line 32
    .line 33
    iget-object v4, v3, Lcom/mycompany/app/main/MainItem$ViewItem;->d:Lcom/mycompany/app/view/MyImageView;

    .line 34
    .line 35
    if-nez v4, :cond_2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    iget-object v3, v3, Lcom/mycompany/app/main/MainItem$ViewItem;->d:Lcom/mycompany/app/view/MyImageView;

    .line 43
    .line 44
    invoke-virtual {v4, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->a(Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    :cond_4
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->f0()V

    .line 51
    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    invoke-virtual {p0, v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->g0(Z)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final e1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->E5(Lcom/mycompany/app/main/MainActivity;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput-boolean v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->A0:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->H5(Lcom/mycompany/app/main/MainActivity;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput-boolean v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->B0:Z

    .line 16
    .line 17
    return-void
.end method

.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    .line 2
    .line 3
    return v0
.end method

.method public final f0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->i0:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->a:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->i0:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    iput-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->i0:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lcom/mycompany/app/image/ImageViewPageEffect$ImageTask;

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 36
    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    const/4 v3, 0x1

    .line 41
    iput-boolean v3, v2, Lcom/mycompany/app/async/MyAsyncTask;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v1

    .line 45
    goto :goto_2

    .line 46
    :catch_0
    :cond_2
    :try_start_1
    monitor-exit v0

    .line 47
    :goto_1
    return-void

    .line 48
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw v1
.end method

.method public final f1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->O5(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-boolean v0, Lcom/mycompany/app/pref/PrefImage;->s:Z

    .line 10
    .line 11
    xor-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->f:Z

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-boolean v0, Lcom/mycompany/app/pref/PrefImage;->s:Z

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->f:Z

    .line 19
    .line 20
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->K:Lcom/mycompany/app/curl/CurlView;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-boolean v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->f:Z

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/mycompany/app/curl/CurlView;->setReverse(Z)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public final g0(Z)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->j0:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_11

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_9

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->a:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x0

    .line 18
    if-nez p1, :cond_d

    .line 19
    .line 20
    :try_start_0
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->K:Lcom/mycompany/app/curl/CurlView;

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    goto/16 :goto_6

    .line 25
    .line 26
    :cond_1
    invoke-virtual {p1}, Lcom/mycompany/app/curl/CurlView;->getPageList()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    goto/16 :goto_8

    .line 39
    .line 40
    :cond_2
    move v3, v2

    .line 41
    :goto_0
    move v4, v2

    .line 42
    move v5, v4

    .line 43
    move v6, v5

    .line 44
    :goto_1
    if-ge v4, v3, :cond_9

    .line 45
    .line 46
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    check-cast v7, Lcom/mycompany/app/curl/CurlMesh;

    .line 51
    .line 52
    if-nez v7, :cond_3

    .line 53
    .line 54
    goto :goto_4

    .line 55
    :cond_3
    iget-object v7, v7, Lcom/mycompany/app/curl/CurlMesh;->C:Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 56
    .line 57
    if-nez v7, :cond_4

    .line 58
    .line 59
    goto :goto_4

    .line 60
    :cond_4
    new-instance v8, Ljava/util/ArrayList;

    .line 61
    .line 62
    iget-object v9, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->j0:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 68
    .line 69
    .line 70
    move-result v9

    .line 71
    move v10, v2

    .line 72
    :cond_5
    :goto_2
    if-ge v10, v9, :cond_7

    .line 73
    .line 74
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v11

    .line 78
    add-int/lit8 v10, v10, 0x1

    .line 79
    .line 80
    check-cast v11, Landroid/widget/ImageView;

    .line 81
    .line 82
    if-nez v11, :cond_6

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_6
    iget v12, v7, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 86
    .line 87
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v13

    .line 91
    check-cast v13, Ljava/lang/Integer;

    .line 92
    .line 93
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 94
    .line 95
    .line 96
    move-result v13

    .line 97
    if-ne v12, v13, :cond_5

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_7
    move-object v11, v1

    .line 101
    :goto_3
    if-eqz v11, :cond_8

    .line 102
    .line 103
    iget-object v8, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->j0:Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    invoke-virtual {v8, v11}, Lcom/nostra13/universalimageloader/core/ImageLoader;->a(Landroid/widget/ImageView;)V

    .line 113
    .line 114
    .line 115
    iget-object v8, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->j0:Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 118
    .line 119
    .line 120
    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    if-eqz v8, :cond_8

    .line 122
    .line 123
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    return-void

    .line 125
    :cond_8
    :try_start_2
    iget v8, v7, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 126
    .line 127
    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    iget v7, v7, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 132
    .line 133
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    .line 134
    .line 135
    .line 136
    move-result v6

    .line 137
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_9
    add-int/lit8 v5, v5, -0x1

    .line 141
    .line 142
    add-int/lit8 v6, v6, 0x1

    .line 143
    .line 144
    new-instance p1, Ljava/util/ArrayList;

    .line 145
    .line 146
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->j0:Ljava/util/ArrayList;

    .line 147
    .line 148
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    :cond_a
    :goto_5
    if-ge v2, v1, :cond_10

    .line 156
    .line 157
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    add-int/lit8 v2, v2, 0x1

    .line 162
    .line 163
    check-cast v3, Landroid/widget/ImageView;

    .line 164
    .line 165
    if-nez v3, :cond_b

    .line 166
    .line 167
    goto :goto_5

    .line 168
    :cond_b
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    check-cast v4, Ljava/lang/Integer;

    .line 173
    .line 174
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    if-lt v4, v5, :cond_c

    .line 179
    .line 180
    if-le v4, v6, :cond_a

    .line 181
    .line 182
    :cond_c
    iget-object v4, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->j0:Ljava/util/ArrayList;

    .line 183
    .line 184
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    invoke-virtual {v4, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->a(Landroid/widget/ImageView;)V

    .line 192
    .line 193
    .line 194
    goto :goto_5

    .line 195
    :cond_d
    :goto_6
    new-instance p1, Ljava/util/ArrayList;

    .line 196
    .line 197
    iget-object v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->j0:Ljava/util/ArrayList;

    .line 198
    .line 199
    invoke-direct {p1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    :goto_7
    if-ge v2, v3, :cond_f

    .line 207
    .line 208
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    add-int/lit8 v2, v2, 0x1

    .line 213
    .line 214
    check-cast v4, Landroid/widget/ImageView;

    .line 215
    .line 216
    if-nez v4, :cond_e

    .line 217
    .line 218
    goto :goto_7

    .line 219
    :cond_e
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    invoke-virtual {v5, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->a(Landroid/widget/ImageView;)V

    .line 224
    .line 225
    .line 226
    goto :goto_7

    .line 227
    :cond_f
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->j0:Ljava/util/ArrayList;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 228
    .line 229
    :try_start_3
    monitor-exit v0

    .line 230
    return-void

    .line 231
    :catch_0
    :cond_10
    monitor-exit v0

    .line 232
    goto :goto_9

    .line 233
    :goto_8
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 234
    throw p1

    .line 235
    :cond_11
    :goto_9
    return-void
.end method

.method public final g1()V
    .locals 8

    .line 1
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 2
    .line 3
    if-eqz v1, :cond_f

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->K:Lcom/mycompany/app/curl/CurlView;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->P0()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    goto/16 :goto_2

    .line 18
    .line 19
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->U:Lcom/mycompany/app/image/ImageCoverView;

    .line 20
    .line 21
    if-eqz v1, :cond_f

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/mycompany/app/image/ImageCoverView;->d()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    goto/16 :goto_2

    .line 30
    .line 31
    :cond_2
    const/4 v1, 0x1

    .line 32
    iput-boolean v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->K0:Z

    .line 33
    .line 34
    iget v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 35
    .line 36
    iget v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    iput v4, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->A:I

    .line 40
    .line 41
    iget v5, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 42
    .line 43
    if-nez v5, :cond_3

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->R0()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_f

    .line 50
    .line 51
    iget-object v5, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 52
    .line 53
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 54
    .line 55
    iget v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 56
    .line 57
    iget v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 58
    .line 59
    const/4 v7, 0x0

    .line 60
    const/4 v4, 0x1

    .line 61
    const/4 v6, 0x1

    .line 62
    move-object v0, p0

    .line 63
    invoke-virtual/range {v0 .. v7}, Lcom/mycompany/app/image/ImageViewPageEffect;->c1(IIIILjava/lang/String;ZZ)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_3
    iget-object v5, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 68
    .line 69
    invoke-static {v5}, Lcom/mycompany/app/main/MainUtil;->H5(Lcom/mycompany/app/main/MainActivity;)Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-nez v5, :cond_7

    .line 74
    .line 75
    iget-boolean v4, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->f:Z

    .line 76
    .line 77
    if-eqz v4, :cond_5

    .line 78
    .line 79
    iget v4, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 80
    .line 81
    if-nez v4, :cond_4

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->R0()Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-eqz v4, :cond_4

    .line 88
    .line 89
    iget-object v5, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 90
    .line 91
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 92
    .line 93
    iget v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 94
    .line 95
    iget v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 96
    .line 97
    const/4 v7, 0x0

    .line 98
    const/4 v4, 0x1

    .line 99
    const/4 v6, 0x1

    .line 100
    move-object v0, p0

    .line 101
    invoke-virtual/range {v0 .. v7}, Lcom/mycompany/app/image/ImageViewPageEffect;->c1(IIIILjava/lang/String;ZZ)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_4
    iget v4, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 106
    .line 107
    iget v5, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 108
    .line 109
    invoke-static {v4, v5, v1, v5}, Landroid/support/v4/media/a;->B(IIII)I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    iput v4, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 114
    .line 115
    goto/16 :goto_1

    .line 116
    .line 117
    :cond_5
    iget v4, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 118
    .line 119
    iget v5, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 120
    .line 121
    sub-int/2addr v5, v1

    .line 122
    if-ne v4, v5, :cond_6

    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->R0()Z

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    if-eqz v4, :cond_6

    .line 129
    .line 130
    iget-object v5, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 131
    .line 132
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 133
    .line 134
    iget v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 135
    .line 136
    iget v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 137
    .line 138
    const/4 v7, 0x0

    .line 139
    const/4 v4, 0x1

    .line 140
    const/4 v6, 0x1

    .line 141
    move-object v0, p0

    .line 142
    invoke-virtual/range {v0 .. v7}, Lcom/mycompany/app/image/ImageViewPageEffect;->c1(IIIILjava/lang/String;ZZ)V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :cond_6
    iget v4, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 147
    .line 148
    add-int/2addr v4, v1

    .line 149
    iget v5, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 150
    .line 151
    rem-int/2addr v4, v5

    .line 152
    iput v4, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 153
    .line 154
    goto/16 :goto_1

    .line 155
    .line 156
    :cond_7
    iget v5, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 157
    .line 158
    const/4 v6, 0x3

    .line 159
    if-ne v5, v6, :cond_8

    .line 160
    .line 161
    const/4 v4, 0x4

    .line 162
    iput v4, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_8
    iget-boolean v5, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->f:Z

    .line 166
    .line 167
    if-eqz v5, :cond_a

    .line 168
    .line 169
    iget v5, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 170
    .line 171
    if-nez v5, :cond_9

    .line 172
    .line 173
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->R0()Z

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    if-eqz v5, :cond_9

    .line 178
    .line 179
    iget-object v5, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 180
    .line 181
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 182
    .line 183
    iget v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 184
    .line 185
    iget v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 186
    .line 187
    const/4 v7, 0x0

    .line 188
    const/4 v4, 0x1

    .line 189
    const/4 v6, 0x1

    .line 190
    move-object v0, p0

    .line 191
    invoke-virtual/range {v0 .. v7}, Lcom/mycompany/app/image/ImageViewPageEffect;->c1(IIIILjava/lang/String;ZZ)V

    .line 192
    .line 193
    .line 194
    return-void

    .line 195
    :cond_9
    iget v5, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 196
    .line 197
    iget v7, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 198
    .line 199
    invoke-static {v5, v7, v1, v7}, Landroid/support/v4/media/a;->B(IIII)I

    .line 200
    .line 201
    .line 202
    move-result v5

    .line 203
    iput v5, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 204
    .line 205
    goto :goto_0

    .line 206
    :cond_a
    iget v5, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 207
    .line 208
    iget v7, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 209
    .line 210
    sub-int/2addr v7, v1

    .line 211
    if-ne v5, v7, :cond_b

    .line 212
    .line 213
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->R0()Z

    .line 214
    .line 215
    .line 216
    move-result v5

    .line 217
    if-eqz v5, :cond_b

    .line 218
    .line 219
    iget-object v5, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 220
    .line 221
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 222
    .line 223
    iget v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 224
    .line 225
    iget v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 226
    .line 227
    const/4 v7, 0x0

    .line 228
    const/4 v4, 0x1

    .line 229
    const/4 v6, 0x1

    .line 230
    move-object v0, p0

    .line 231
    invoke-virtual/range {v0 .. v7}, Lcom/mycompany/app/image/ImageViewPageEffect;->c1(IIIILjava/lang/String;ZZ)V

    .line 232
    .line 233
    .line 234
    return-void

    .line 235
    :cond_b
    iget v5, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 236
    .line 237
    add-int/2addr v5, v1

    .line 238
    iget v7, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 239
    .line 240
    rem-int/2addr v5, v7

    .line 241
    iput v5, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 242
    .line 243
    :goto_0
    iget-object v5, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 244
    .line 245
    iget v7, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 246
    .line 247
    invoke-virtual {v5, v7}, Lcom/mycompany/app/compress/Compress;->g(I)Lcom/mycompany/app/compress/CompressCache$BitmapInfo;

    .line 248
    .line 249
    .line 250
    move-result-object v5

    .line 251
    if-eqz v5, :cond_d

    .line 252
    .line 253
    iget v4, v5, Lcom/mycompany/app/compress/CompressCache$BitmapInfo;->a:I

    .line 254
    .line 255
    iget v5, v5, Lcom/mycompany/app/compress/CompressCache$BitmapInfo;->b:I

    .line 256
    .line 257
    if-le v4, v5, :cond_c

    .line 258
    .line 259
    iput v6, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 260
    .line 261
    goto :goto_1

    .line 262
    :cond_c
    const/4 v4, 0x2

    .line 263
    iput v4, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 264
    .line 265
    goto :goto_1

    .line 266
    :cond_d
    iput v4, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 267
    .line 268
    iput v6, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->A:I

    .line 269
    .line 270
    :goto_1
    iget v4, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 271
    .line 272
    if-ne v2, v4, :cond_e

    .line 273
    .line 274
    iget v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 275
    .line 276
    if-ne v3, v2, :cond_e

    .line 277
    .line 278
    goto :goto_2

    .line 279
    :cond_e
    iget-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->U:Lcom/mycompany/app/image/ImageCoverView;

    .line 280
    .line 281
    iget-object v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->N:Landroid/widget/FrameLayout;

    .line 282
    .line 283
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->o0()I

    .line 284
    .line 285
    .line 286
    move-result v4

    .line 287
    invoke-virtual {v2, v4, v3, v1}, Lcom/mycompany/app/image/ImageCoverView;->b(ILandroid/view/View;Z)V

    .line 288
    .line 289
    .line 290
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 291
    .line 292
    iget v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 293
    .line 294
    iget v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 295
    .line 296
    iget v4, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 297
    .line 298
    invoke-virtual {v1, v2, v3, v4}, Lcom/mycompany/app/image/ImageViewControl;->t(III)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->Y0()V

    .line 302
    .line 303
    .line 304
    :cond_f
    :goto_2
    return-void
.end method

.method public final h(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_1

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->P0()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    goto/16 :goto_1

    .line 14
    .line 15
    :cond_1
    iget v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 16
    .line 17
    add-int/lit8 v1, v0, -0x1

    .line 18
    .line 19
    if-le p1, v1, :cond_2

    .line 20
    .line 21
    move p1, v1

    .line 22
    :cond_2
    const/4 v1, 0x0

    .line 23
    if-gez p1, :cond_3

    .line 24
    .line 25
    move p1, v1

    .line 26
    :cond_3
    iget v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 27
    .line 28
    if-ne p1, v2, :cond_4

    .line 29
    .line 30
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 31
    .line 32
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 33
    .line 34
    invoke-virtual {p1, v0, v2, v1}, Lcom/mycompany/app/image/ImageViewControl;->t(III)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->U:Lcom/mycompany/app/image/ImageCoverView;

    .line 39
    .line 40
    if-eqz v0, :cond_c

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageCoverView;->d()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_5

    .line 47
    .line 48
    goto/16 :goto_1

    .line 49
    .line 50
    :cond_5
    sget-boolean v0, Lcom/mycompany/app/pref/PrefImage;->s:Z

    .line 51
    .line 52
    const/4 v2, 0x1

    .line 53
    if-eqz v0, :cond_7

    .line 54
    .line 55
    iget v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 56
    .line 57
    if-ge p1, v0, :cond_6

    .line 58
    .line 59
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->U:Lcom/mycompany/app/image/ImageCoverView;

    .line 60
    .line 61
    iget-object v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->N:Landroid/widget/FrameLayout;

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->o0()I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    invoke-virtual {v0, v4, v3, v2}, Lcom/mycompany/app/image/ImageCoverView;->b(ILandroid/view/View;Z)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->U:Lcom/mycompany/app/image/ImageCoverView;

    .line 72
    .line 73
    iget-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->N:Landroid/widget/FrameLayout;

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->o0()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    invoke-virtual {v0, v3, v2, v1}, Lcom/mycompany/app/image/ImageCoverView;->b(ILandroid/view/View;Z)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_7
    iget v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 84
    .line 85
    if-le p1, v0, :cond_8

    .line 86
    .line 87
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->U:Lcom/mycompany/app/image/ImageCoverView;

    .line 88
    .line 89
    iget-object v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->N:Landroid/widget/FrameLayout;

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->o0()I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    invoke-virtual {v0, v4, v3, v2}, Lcom/mycompany/app/image/ImageCoverView;->b(ILandroid/view/View;Z)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->U:Lcom/mycompany/app/image/ImageCoverView;

    .line 100
    .line 101
    iget-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->N:Landroid/widget/FrameLayout;

    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->o0()I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    invoke-virtual {v0, v3, v2, v1}, Lcom/mycompany/app/image/ImageCoverView;->b(ILandroid/view/View;Z)V

    .line 108
    .line 109
    .line 110
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->e0()V

    .line 111
    .line 112
    .line 113
    iput p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 114
    .line 115
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 116
    .line 117
    iget v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 118
    .line 119
    iget v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 120
    .line 121
    invoke-virtual {v0, v2, p1, v3}, Lcom/mycompany/app/image/ImageViewControl;->t(III)V

    .line 122
    .line 123
    .line 124
    iget p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 125
    .line 126
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/image/ImageViewPageEffect;->p0(IZ)I

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    iput p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->Y0()V

    .line 133
    .line 134
    .line 135
    iget p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->p:I

    .line 136
    .line 137
    const/4 v0, 0x2

    .line 138
    if-ne p1, v0, :cond_c

    .line 139
    .line 140
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 141
    .line 142
    if-nez p1, :cond_9

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_9
    iget v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 146
    .line 147
    invoke-virtual {p1, v0}, Lcom/mycompany/app/compress/Compress;->n(I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    if-eqz p1, :cond_a

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_a
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 159
    .line 160
    if-nez p1, :cond_b

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_b
    new-instance v0, Lcom/mycompany/app/image/ImageViewPageEffect$36;

    .line 164
    .line 165
    invoke-direct {v0, p0}, Lcom/mycompany/app/image/ImageViewPageEffect$36;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, v0}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 169
    .line 170
    .line 171
    :cond_c
    :goto_1
    return-void
.end method

.method public final h0(Z)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->C0:Z

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
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->K:Lcom/mycompany/app/curl/CurlView;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    return v2

    .line 13
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->Q0()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->g:Lcom/mycompany/app/image/ImageViewActivity$SavedItem;

    .line 18
    .line 19
    if-eqz v3, :cond_3

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->s0:Lcom/mycompany/app/dialog/DialogListBook;

    .line 24
    .line 25
    if-nez p1, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->r0()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v2}, Lcom/mycompany/app/image/ImageViewPageEffect;->q0(Z)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lcom/mycompany/app/image/ImageViewPageEffect;->o1(Z)V

    .line 34
    .line 35
    .line 36
    :cond_2
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->e1()V

    .line 37
    .line 38
    .line 39
    return v2

    .line 40
    :cond_3
    iget-boolean v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->B0:Z

    .line 41
    .line 42
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->I5(Z)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eq v3, v4, :cond_4

    .line 47
    .line 48
    iget v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 49
    .line 50
    invoke-virtual {p0, v3, v2}, Lcom/mycompany/app/image/ImageViewPageEffect;->p0(IZ)I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    iput v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 55
    .line 56
    :cond_4
    if-eqz v0, :cond_5

    .line 57
    .line 58
    sget v3, Lcom/mycompany/app/pref/PrefImage;->u:I

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_5
    sget v3, Lcom/mycompany/app/pref/PrefImage;->t:I

    .line 62
    .line 63
    :goto_0
    if-eqz v3, :cond_6

    .line 64
    .line 65
    move v3, v1

    .line 66
    goto :goto_1

    .line 67
    :cond_6
    move v3, v2

    .line 68
    :goto_1
    if-eqz v3, :cond_a

    .line 69
    .line 70
    iput-boolean v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->C0:Z

    .line 71
    .line 72
    if-eqz p1, :cond_7

    .line 73
    .line 74
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->s0:Lcom/mycompany/app/dialog/DialogListBook;

    .line 75
    .line 76
    if-eqz p1, :cond_7

    .line 77
    .line 78
    move p1, v1

    .line 79
    goto :goto_2

    .line 80
    :cond_7
    move p1, v2

    .line 81
    :goto_2
    iget v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 82
    .line 83
    if-nez v0, :cond_8

    .line 84
    .line 85
    iget v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 86
    .line 87
    invoke-virtual {p0, v0, v2}, Lcom/mycompany/app/image/ImageViewPageEffect;->p0(IZ)I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    iput v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 92
    .line 93
    :cond_8
    new-instance v0, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;

    .line 94
    .line 95
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 96
    .line 97
    .line 98
    iput-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->g:Lcom/mycompany/app/image/ImageViewActivity$SavedItem;

    .line 99
    .line 100
    iget-boolean v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->k:Z

    .line 101
    .line 102
    iput-boolean v3, v0, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->a:Z

    .line 103
    .line 104
    iget-object v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->m:Ljava/lang/String;

    .line 105
    .line 106
    iput-object v3, v0, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->b:Ljava/lang/String;

    .line 107
    .line 108
    iget-boolean v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->n:Z

    .line 109
    .line 110
    iput-boolean v3, v0, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->c:Z

    .line 111
    .line 112
    iget-object v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->o:Ljava/util/ArrayList;

    .line 113
    .line 114
    iput-object v3, v0, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->d:Ljava/util/ArrayList;

    .line 115
    .line 116
    iget v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->p:I

    .line 117
    .line 118
    iput v3, v0, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->e:I

    .line 119
    .line 120
    iget v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->t:I

    .line 121
    .line 122
    iput v3, v0, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->m:I

    .line 123
    .line 124
    iget-object v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->u:Ljava/lang/String;

    .line 125
    .line 126
    iput-object v3, v0, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->i:Ljava/lang/String;

    .line 127
    .line 128
    iget v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    .line 129
    .line 130
    iput v3, v0, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->f:I

    .line 131
    .line 132
    iget-object v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 133
    .line 134
    iput-object v3, v0, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->g:Lcom/mycompany/app/compress/Compress;

    .line 135
    .line 136
    iget-object v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 137
    .line 138
    iput-object v3, v0, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->h:Ljava/lang/String;

    .line 139
    .line 140
    iget v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 141
    .line 142
    iput v3, v0, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->j:I

    .line 143
    .line 144
    iget v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 145
    .line 146
    iput v3, v0, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->k:I

    .line 147
    .line 148
    iget v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 149
    .line 150
    iput v3, v0, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->l:I

    .line 151
    .line 152
    iget-object v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->R:Lcom/mycompany/app/image/ImageGifView;

    .line 153
    .line 154
    if-eqz v3, :cond_9

    .line 155
    .line 156
    invoke-virtual {v3}, Lcom/mycompany/app/view/MyFadeFrame;->e()Z

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    if-eqz v3, :cond_9

    .line 161
    .line 162
    move v2, v1

    .line 163
    :cond_9
    iput-boolean v2, v0, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->n:Z

    .line 164
    .line 165
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->g:Lcom/mycompany/app/image/ImageViewActivity$SavedItem;

    .line 166
    .line 167
    iput p1, v0, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->o:I

    .line 168
    .line 169
    invoke-virtual {p0, v1}, Lcom/mycompany/app/image/ImageViewPageEffect;->I(Z)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->G()V

    .line 173
    .line 174
    .line 175
    return v1

    .line 176
    :cond_a
    if-eqz p1, :cond_b

    .line 177
    .line 178
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->s0:Lcom/mycompany/app/dialog/DialogListBook;

    .line 179
    .line 180
    if-nez p1, :cond_b

    .line 181
    .line 182
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->r0()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0, v2}, Lcom/mycompany/app/image/ImageViewPageEffect;->q0(Z)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0, v1}, Lcom/mycompany/app/image/ImageViewPageEffect;->o1(Z)V

    .line 189
    .line 190
    .line 191
    :cond_b
    iget-boolean p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->B0:Z

    .line 192
    .line 193
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->I5(Z)Z

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-eq p1, v1, :cond_c

    .line 198
    .line 199
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->Y0()V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->e1()V

    .line 203
    .line 204
    .line 205
    return v2

    .line 206
    :cond_c
    iget-boolean p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->A0:Z

    .line 207
    .line 208
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->F5(Z)Z

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    if-eq p1, v0, :cond_e

    .line 213
    .line 214
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->l0:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 215
    .line 216
    if-eqz p1, :cond_d

    .line 217
    .line 218
    invoke-virtual {p1}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->u()V

    .line 219
    .line 220
    .line 221
    :cond_d
    iget p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->W:I

    .line 222
    .line 223
    iget v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->X:I

    .line 224
    .line 225
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->d1(II)V

    .line 226
    .line 227
    .line 228
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->O:Lcom/mycompany/app/view/MyImageView;

    .line 229
    .line 230
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 231
    .line 232
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->E5(Lcom/mycompany/app/main/MainActivity;)Z

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyImageView;->setFit(Z)V

    .line 237
    .line 238
    .line 239
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->K:Lcom/mycompany/app/curl/CurlView;

    .line 240
    .line 241
    invoke-virtual {p1}, Lcom/mycompany/app/curl/CurlView;->d()V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->e1()V

    .line 245
    .line 246
    .line 247
    return v2

    .line 248
    :cond_e
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->e1()V

    .line 249
    .line 250
    .line 251
    return v2
.end method

.method public final h1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->B:Lcom/mycompany/app/image/ImageViewPageEffect$EventHandler;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const v2, 0x36ee80

    .line 11
    .line 12
    .line 13
    iget v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->D:I

    .line 14
    .line 15
    sub-int/2addr v2, v3

    .line 16
    if-gtz v2, :cond_4

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getKeepScreenOn()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 29
    .line 30
    if-nez v0, :cond_3

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    new-instance v1, Lcom/mycompany/app/image/ImageViewPageEffect$12;

    .line 34
    .line 35
    invoke-direct {v1, p0}, Lcom/mycompany/app/image/ImageViewPageEffect$12;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_4
    const/4 v1, 0x0

    .line 43
    int-to-long v2, v2

    .line 44
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 48
    .line 49
    if-nez v0, :cond_5

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getKeepScreenOn()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_6

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 60
    .line 61
    if-nez v0, :cond_7

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_7
    new-instance v1, Lcom/mycompany/app/image/ImageViewPageEffect$11;

    .line 65
    .line 66
    invoke-direct {v1, p0}, Lcom/mycompany/app/image/ImageViewPageEffect$11;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 70
    .line 71
    .line 72
    :cond_8
    :goto_0
    return-void
.end method

.method public final i()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/mycompany/app/compress/Compress;->n(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    invoke-static {v5}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 24
    .line 25
    sget v1, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 26
    .line 27
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    sget-object v0, Lcom/mycompany/app/pref/PrefAlbum;->H:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_3

    .line 38
    .line 39
    sget-object v0, Lcom/mycompany/app/pref/PrefAlbum;->I:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_3

    .line 46
    .line 47
    iget-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 48
    .line 49
    sget-object v3, Lcom/mycompany/app/pref/PrefAlbum;->H:Ljava/lang/String;

    .line 50
    .line 51
    sget-object v4, Lcom/mycompany/app/pref/PrefAlbum;->I:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v6, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->m:Ljava/lang/String;

    .line 54
    .line 55
    const/4 v7, 0x0

    .line 56
    const-string v8, "image/*"

    .line 57
    .line 58
    invoke-static/range {v2 .. v8}, Lcom/mycompany/app/main/MainUtil;->G4(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->T:Lcom/mycompany/app/view/MyCoverView;

    .line 63
    .line 64
    if-eqz v0, :cond_4

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyCoverView;->l()V

    .line 67
    .line 68
    .line 69
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 70
    .line 71
    if-nez v0, :cond_5

    .line 72
    .line 73
    :goto_0
    return-void

    .line 74
    :cond_5
    new-instance v1, Lcom/mycompany/app/image/ImageViewPageEffect$49;

    .line 75
    .line 76
    invoke-direct {v1, p0, v5}, Lcom/mycompany/app/image/ImageViewPageEffect$49;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final i0(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->i0:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x3

    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->i0:Ljava/util/ArrayList;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/mycompany/app/image/ImageViewPageEffect$ImageTask;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->i0:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    iput-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 31
    .line 32
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->K:Lcom/mycompany/app/curl/CurlView;

    .line 33
    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    if-eqz p1, :cond_7

    .line 38
    .line 39
    iget-object v0, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->c:Lcom/mycompany/app/curl/CurlMesh;

    .line 40
    .line 41
    if-nez v0, :cond_3

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_3
    iget-object v0, v0, Lcom/mycompany/app/curl/CurlMesh;->C:Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 45
    .line 46
    if-eqz v0, :cond_4

    .line 47
    .line 48
    iget v1, v0, Lcom/mycompany/app/main/MainItem$ViewItem;->e:I

    .line 49
    .line 50
    iget v2, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->e:I

    .line 51
    .line 52
    if-ne v1, v2, :cond_7

    .line 53
    .line 54
    iget v1, v0, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 55
    .line 56
    iget v2, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 57
    .line 58
    if-ne v1, v2, :cond_7

    .line 59
    .line 60
    iget v1, v0, Lcom/mycompany/app/main/MainItem$ViewItem;->g:I

    .line 61
    .line 62
    iget v2, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->g:I

    .line 63
    .line 64
    if-ne v1, v2, :cond_7

    .line 65
    .line 66
    iget v0, v0, Lcom/mycompany/app/main/MainItem$ViewItem;->h:I

    .line 67
    .line 68
    iget v1, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->h:I

    .line 69
    .line 70
    if-eq v0, v1, :cond_4

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_4
    iget-object v0, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->v:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_5

    .line 80
    .line 81
    iget-object v0, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->v:Ljava/lang/String;

    .line 82
    .line 83
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_5

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_5
    new-instance v0, Lcom/mycompany/app/image/ImageViewPageEffect$ImageTask;

    .line 93
    .line 94
    invoke-direct {v0, p0, p1, p2}, Lcom/mycompany/app/image/ImageViewPageEffect$ImageTask;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/graphics/Bitmap;)V

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 98
    .line 99
    invoke-virtual {v0, p1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->i0:Ljava/util/ArrayList;

    .line 103
    .line 104
    if-nez p1, :cond_6

    .line 105
    .line 106
    new-instance p1, Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .line 110
    .line 111
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->i0:Ljava/util/ArrayList;

    .line 112
    .line 113
    :cond_6
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->i0:Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    :cond_7
    :goto_1
    return-void
.end method

.method public final i1(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->B:Lcom/mycompany/app/image/ImageViewPageEffect$EventHandler;

    .line 2
    .line 3
    if-eqz v0, :cond_c

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 12
    .line 13
    .line 14
    sget v0, Lcom/mycompany/app/pref/PrefImage;->p:I

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    if-ne v0, v2, :cond_4

    .line 18
    .line 19
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getKeepScreenOn()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 32
    .line 33
    if-nez p1, :cond_3

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_3
    new-instance v0, Lcom/mycompany/app/image/ImageViewPageEffect$11;

    .line 37
    .line 38
    invoke-direct {v0, p0}, Lcom/mycompany/app/image/ImageViewPageEffect$11;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_4
    if-eqz p1, :cond_8

    .line 46
    .line 47
    if-nez v0, :cond_5

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_5
    iget-boolean p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->C:Z

    .line 51
    .line 52
    if-nez p1, :cond_6

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->h1()V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_6
    iput-boolean v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->C:Z

    .line 59
    .line 60
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 61
    .line 62
    if-nez p1, :cond_7

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_7
    new-instance v0, Lcom/mycompany/app/image/ImageViewPageEffect$10;

    .line 66
    .line 67
    invoke-direct {v0, p0}, Lcom/mycompany/app/image/ImageViewPageEffect$10;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v0}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_8
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 75
    .line 76
    if-nez p1, :cond_9

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getKeepScreenOn()Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-nez p1, :cond_a

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_a
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 87
    .line 88
    if-nez p1, :cond_b

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_b
    new-instance v0, Lcom/mycompany/app/image/ImageViewPageEffect$12;

    .line 92
    .line 93
    invoke-direct {v0, p0}, Lcom/mycompany/app/image/ImageViewPageEffect$12;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 97
    .line 98
    .line 99
    :cond_c
    :goto_1
    return-void
.end method

.method public final j(IILandroid/content/Intent;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->t0:Lcom/mycompany/app/dialog/DialogCapture;

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
    goto/16 :goto_2

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->u0:Lcom/mycompany/app/dialog/DialogDownUrl;

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
    goto/16 :goto_2

    .line 24
    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->l1(Z)V

    .line 27
    .line 28
    .line 29
    const/4 v1, -0x1

    .line 30
    const/4 v2, 0x1

    .line 31
    if-eq p1, v2, :cond_c

    .line 32
    .line 33
    const/4 v3, 0x7

    .line 34
    if-eq p1, v3, :cond_2

    .line 35
    .line 36
    goto/16 :goto_2

    .line 37
    .line 38
    :cond_2
    if-ne p2, v1, :cond_f

    .line 39
    .line 40
    if-nez p3, :cond_3

    .line 41
    .line 42
    goto/16 :goto_2

    .line 43
    .line 44
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 45
    .line 46
    if-nez p1, :cond_4

    .line 47
    .line 48
    goto/16 :goto_2

    .line 49
    .line 50
    :cond_4
    const-string p1, "EXTRA_PATH"

    .line 51
    .line 52
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-nez p2, :cond_f

    .line 61
    .line 62
    iget-object p2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    if-eqz p2, :cond_5

    .line 69
    .line 70
    goto/16 :goto_2

    .line 71
    .line 72
    :cond_5
    const-string p2, "EXTRA_INDEX"

    .line 73
    .line 74
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->t:I

    .line 75
    .line 76
    invoke-virtual {p3, p2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    iget p3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    .line 81
    .line 82
    const/16 v1, 0xc

    .line 83
    .line 84
    if-ne p3, v1, :cond_6

    .line 85
    .line 86
    iget-object p3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 87
    .line 88
    invoke-static {p3}, Lcom/mycompany/app/data/DataAlbum;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataAlbum;

    .line 89
    .line 90
    .line 91
    move-result-object p3

    .line 92
    invoke-virtual {p3, p2}, Lcom/mycompany/app/data/DataList;->f(I)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 93
    .line 94
    .line 95
    move-result-object p3

    .line 96
    goto :goto_0

    .line 97
    :cond_6
    iget-object p3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 98
    .line 99
    invoke-virtual {p3, p2}, Lcom/mycompany/app/compress/Compress;->k(I)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 100
    .line 101
    .line 102
    move-result-object p3

    .line 103
    :goto_0
    if-nez p3, :cond_7

    .line 104
    .line 105
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 106
    .line 107
    sget p2, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 108
    .line 109
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :cond_7
    invoke-virtual {p0, v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->q0(Z)V

    .line 114
    .line 115
    .line 116
    iget v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    .line 117
    .line 118
    if-ne v3, v2, :cond_8

    .line 119
    .line 120
    iget-object v4, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 121
    .line 122
    iget-object v5, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 123
    .line 124
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 125
    .line 126
    int-to-long v6, v1

    .line 127
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 128
    .line 129
    int-to-long v8, v1

    .line 130
    iget v10, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 131
    .line 132
    invoke-static/range {v4 .. v10}, Lcom/mycompany/app/db/DbAlbum;->e(Landroid/content/Context;Ljava/lang/String;JJI)V

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_8
    const/4 v4, 0x2

    .line 137
    if-ne v3, v4, :cond_9

    .line 138
    .line 139
    iget-object v5, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 140
    .line 141
    iget-object v6, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 142
    .line 143
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 144
    .line 145
    int-to-long v7, v1

    .line 146
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 147
    .line 148
    int-to-long v9, v1

    .line 149
    iget v11, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 150
    .line 151
    invoke-static/range {v5 .. v11}, Lcom/mycompany/app/db/DbPdf;->f(Landroid/content/Context;Ljava/lang/String;JJI)V

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_9
    const/4 v4, 0x3

    .line 156
    if-ne v3, v4, :cond_a

    .line 157
    .line 158
    iget-object v5, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 159
    .line 160
    iget-object v6, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 161
    .line 162
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 163
    .line 164
    int-to-long v7, v1

    .line 165
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 166
    .line 167
    int-to-long v9, v1

    .line 168
    iget v11, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 169
    .line 170
    invoke-static/range {v5 .. v11}, Lcom/mycompany/app/db/DbCmp;->f(Landroid/content/Context;Ljava/lang/String;JJI)V

    .line 171
    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_a
    if-ne v3, v1, :cond_b

    .line 175
    .line 176
    iput v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    .line 177
    .line 178
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 179
    .line 180
    if-eqz v1, :cond_b

    .line 181
    .line 182
    invoke-virtual {v1, v2}, Lcom/mycompany/app/image/ImageViewControl;->setIconType(I)V

    .line 183
    .line 184
    .line 185
    :cond_b
    :goto_1
    iput-boolean v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->k:Z

    .line 186
    .line 187
    const/4 v1, 0x0

    .line 188
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->m:Ljava/lang/String;

    .line 189
    .line 190
    iput-boolean v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->n:Z

    .line 191
    .line 192
    iput v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->p:I

    .line 193
    .line 194
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->W0()V

    .line 195
    .line 196
    .line 197
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->u:Ljava/lang/String;

    .line 198
    .line 199
    iput p2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->t:I

    .line 200
    .line 201
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 202
    .line 203
    iput v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 204
    .line 205
    iput v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 206
    .line 207
    iput v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 208
    .line 209
    invoke-virtual {p0, p3, v2}, Lcom/mycompany/app/image/ImageViewPageEffect;->n0(Lcom/mycompany/app/main/MainItem$ChildItem;Z)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0, v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->j0(Z)V

    .line 213
    .line 214
    .line 215
    return-void

    .line 216
    :cond_c
    if-ne p2, v1, :cond_f

    .line 217
    .line 218
    if-nez p3, :cond_d

    .line 219
    .line 220
    goto :goto_2

    .line 221
    :cond_d
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 222
    .line 223
    if-eqz p1, :cond_f

    .line 224
    .line 225
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 226
    .line 227
    if-nez p1, :cond_e

    .line 228
    .line 229
    goto :goto_2

    .line 230
    :cond_e
    const-string p1, "EXTRA_THUMB"

    .line 231
    .line 232
    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 233
    .line 234
    .line 235
    move-result p1

    .line 236
    if-eqz p1, :pdf_timeout

    .line 237
    .line 238
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 239
    .line 240
    iget p2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    .line 241
    .line 242
    iget p3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->p:I

    .line 243
    .line 244
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 245
    .line 246
    invoke-virtual {p1, p2, p3, v0}, Lcom/mycompany/app/image/ImageViewControl;->p(IILcom/mycompany/app/compress/Compress;)V

    .line 247
    .line 248
    .line 249
    :pdf_timeout
    iget p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_f

    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/mycompany/app/pref/PrefImage;->s(Landroid/content/Context;Z)V

    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    invoke-static {p1}, Lcom/mycompany/app/image/PdfPreviewToolbar;->applyControlTimeout(Lcom/mycompany/app/image/ImageViewControl;)V

    .line 249
    :cond_f
    :goto_2
    return-void
.end method

.method public final j0(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->e0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->g0:Lcom/mycompany/app/image/ImageViewPageEffect$LoadTask;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iput-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->g0:Lcom/mycompany/app/image/ImageViewPageEffect$LoadTask;

    .line 13
    .line 14
    iget v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    .line 15
    .line 16
    const/16 v2, 0xc

    .line 17
    .line 18
    if-eq v0, v2, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 29
    .line 30
    sget v0, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 31
    .line 32
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->k0()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    iput-boolean v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->f0:Z

    .line 40
    .line 41
    new-instance v0, Lcom/mycompany/app/image/ImageViewPageEffect$LoadTask;

    .line 42
    .line 43
    invoke-direct {v0, p0, p1}, Lcom/mycompany/app/image/ImageViewPageEffect$LoadTask;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;Z)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->g0:Lcom/mycompany/app/image/ImageViewPageEffect$LoadTask;

    .line 47
    .line 48
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 49
    .line 50
    invoke-virtual {v0, p1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final j1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainActivity;->r0()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final k()Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->K0:Z

    .line 3
    .line 4
    iget-boolean v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->H0:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->a1()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-boolean v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->I0:Z

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->g1()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->p1()V

    .line 21
    .line 22
    .line 23
    :goto_0
    iput-boolean v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->H0:Z

    .line 24
    .line 25
    iput-boolean v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->I0:Z

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    return v0
.end method

.method public final k0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewActivity;->finish()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final k1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->T0:Lcom/mycompany/app/image/ImageTransView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v1, Lcom/mycompany/app/image/ImageViewPageEffect$63;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/mycompany/app/image/ImageViewPageEffect$63;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    :cond_1
    :goto_0
    return-void
.end method

.method public final l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcom/mycompany/app/image/ImageViewControl;->setIconCrop(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->K:Lcom/mycompany/app/curl/CurlView;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/mycompany/app/curl/CurlView;->d()V

    .line 13
    .line 14
    .line 15
    sget-boolean v0, Lcom/mycompany/app/pref/PrefPdf;->j:Z

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    sget-boolean v0, Lcom/mycompany/app/pref/PrefPdf;->k:Z

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    new-instance v1, Lcom/mycompany/app/image/ImageViewPageEffect$33;

    .line 29
    .line 30
    invoke-direct {v1, p0}, Lcom/mycompany/app/image/ImageViewPageEffect$33;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 34
    .line 35
    .line 36
    :cond_2
    :goto_0
    return-void
.end method

.method public final l0(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    iget v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    .line 10
    .line 11
    const/4 v2, 0x3

    .line 12
    const/4 v3, 0x2

    .line 13
    const/4 v4, 0x1

    .line 14
    if-ne v0, v4, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/mycompany/app/data/DataAlbum;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataAlbum;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v0, v0, Lcom/mycompany/app/data/DataList;->b:Ljava/util/List;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    if-ne v0, v3, :cond_2

    .line 26
    .line 27
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/mycompany/app/data/DataPdf;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataPdf;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v0, v0, Lcom/mycompany/app/data/DataList;->b:Ljava/util/List;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    if-ne v0, v2, :cond_3

    .line 37
    .line 38
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/mycompany/app/data/DataCmp;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataCmp;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v0, v0, Lcom/mycompany/app/data/DataList;->b:Ljava/util/List;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    move-object v0, v1

    .line 48
    :goto_0
    if-eqz v0, :cond_f

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-ge v5, v3, :cond_4

    .line 55
    .line 56
    goto/16 :goto_3

    .line 57
    .line 58
    :cond_4
    iget v5, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->t:I

    .line 59
    .line 60
    const/4 v6, -0x1

    .line 61
    if-eq v5, v6, :cond_5

    .line 62
    .line 63
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    if-ge v5, v7, :cond_5

    .line 68
    .line 69
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    if-nez v7, :cond_6

    .line 78
    .line 79
    :cond_5
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-ne v5, v6, :cond_6

    .line 84
    .line 85
    return-object v1

    .line 86
    :cond_6
    if-eqz p2, :cond_8

    .line 87
    .line 88
    iget-boolean p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->f:Z

    .line 89
    .line 90
    if-eqz p1, :cond_7

    .line 91
    .line 92
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    add-int/2addr p1, v5

    .line 97
    sub-int/2addr p1, v4

    .line 98
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    rem-int/2addr p1, p2

    .line 103
    goto :goto_1

    .line 104
    :cond_7
    add-int/2addr v5, v4

    .line 105
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    rem-int p1, v5, p1

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_8
    iget-boolean p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->f:Z

    .line 113
    .line 114
    if-eqz p1, :cond_9

    .line 115
    .line 116
    add-int/2addr v5, v4

    .line 117
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    rem-int p1, v5, p1

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    add-int/2addr p1, v5

    .line 129
    sub-int/2addr p1, v4

    .line 130
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 131
    .line 132
    .line 133
    move-result p2

    .line 134
    rem-int/2addr p1, p2

    .line 135
    :goto_1
    iget p2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    .line 136
    .line 137
    if-ne p2, v4, :cond_a

    .line 138
    .line 139
    iget-object p2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 140
    .line 141
    invoke-static {p2}, Lcom/mycompany/app/data/DataAlbum;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataAlbum;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    invoke-virtual {p2, p1}, Lcom/mycompany/app/data/DataList;->f(I)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    goto :goto_2

    .line 150
    :cond_a
    if-ne p2, v3, :cond_b

    .line 151
    .line 152
    iget-object p2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 153
    .line 154
    invoke-static {p2}, Lcom/mycompany/app/data/DataPdf;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataPdf;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    invoke-virtual {p2, p1}, Lcom/mycompany/app/data/DataList;->f(I)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    goto :goto_2

    .line 163
    :cond_b
    if-ne p2, v2, :cond_c

    .line 164
    .line 165
    iget-object p2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 166
    .line 167
    invoke-static {p2}, Lcom/mycompany/app/data/DataCmp;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataCmp;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    invoke-virtual {p2, p1}, Lcom/mycompany/app/data/DataList;->f(I)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    :cond_c
    :goto_2
    if-eqz v1, :cond_d

    .line 176
    .line 177
    iget-object p1, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 178
    .line 179
    return-object p1

    .line 180
    :cond_d
    iget p2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    .line 181
    .line 182
    if-ne p2, v4, :cond_e

    .line 183
    .line 184
    iget-object p2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 185
    .line 186
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    check-cast p1, Ljava/lang/String;

    .line 191
    .line 192
    invoke-static {p2, p1}, Lcom/mycompany/app/main/MainUtil;->j1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    return-object p1

    .line 197
    :cond_e
    iget-object p2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 198
    .line 199
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    check-cast p1, Ljava/lang/String;

    .line 204
    .line 205
    invoke-static {p2, p1}, Lcom/mycompany/app/main/MainUtil;->b1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    return-object p1

    .line 210
    :cond_f
    :goto_3
    return-object v1
.end method

.method public final l1(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/mycompany/app/image/ImageViewControl;->x(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final m()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->T0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewControl;->l()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    return v1

    .line 20
    :cond_1
    const/4 v0, 0x0

    .line 21
    return v0
.end method

.method public final m0()Landroid/graphics/Bitmap;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_7

    .line 5
    .line 6
    iget v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    goto/16 :goto_2

    .line 11
    .line 12
    :cond_0
    iget v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Lcom/mycompany/app/compress/Compress;->n(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    .line 19
    .line 20
    const/16 v3, 0xc

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x1

    .line 24
    if-ne v2, v3, :cond_1

    .line 25
    .line 26
    move v2, v5

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move v2, v4

    .line 29
    :goto_0
    iget-object v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->Q0()Z

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    iget v7, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    .line 36
    .line 37
    const/4 v8, 0x2

    .line 38
    if-ne v7, v8, :cond_2

    .line 39
    .line 40
    move v7, v5

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    move v7, v4

    .line 43
    :goto_1
    invoke-static {v3, v6, v7}, Lcom/mycompany/app/main/MainUtil;->l0(Landroid/content/Context;ZZ)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    iget-object v6, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 48
    .line 49
    invoke-virtual {v6, v0, v3, v2}, Lcom/mycompany/app/compress/Compress;->f(Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_3

    .line 58
    .line 59
    return-object v0

    .line 60
    :cond_3
    new-instance v0, Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 63
    .line 64
    .line 65
    const/16 v2, 0x8

    .line 66
    .line 67
    iput v2, v0, Lcom/mycompany/app/main/MainItem$ViewItem;->a:I

    .line 68
    .line 69
    iget-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 70
    .line 71
    iput-object v2, v0, Lcom/mycompany/app/main/MainItem$ViewItem;->b:Lcom/mycompany/app/compress/Compress;

    .line 72
    .line 73
    iget-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->m:Ljava/lang/String;

    .line 74
    .line 75
    iput-object v2, v0, Lcom/mycompany/app/main/MainItem$ViewItem;->r:Ljava/lang/String;

    .line 76
    .line 77
    iget v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 78
    .line 79
    iput v2, v0, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 80
    .line 81
    iget-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->Q0()Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    iget v6, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    .line 88
    .line 89
    if-ne v6, v8, :cond_4

    .line 90
    .line 91
    move v4, v5

    .line 92
    :cond_4
    invoke-static {v2, v3, v4}, Lcom/mycompany/app/main/MainUtil;->l0(Landroid/content/Context;ZZ)I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    iput v2, v0, Lcom/mycompany/app/main/MainItem$ViewItem;->t:I

    .line 97
    .line 98
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    iget-object v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c0:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 103
    .line 104
    invoke-virtual {v2, v0, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->j(Lcom/mycompany/app/main/MainItem$ViewItem;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/Bitmap;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-eqz v2, :cond_5

    .line 113
    .line 114
    return-object v0

    .line 115
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 116
    .line 117
    if-nez v0, :cond_6

    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_6
    new-instance v2, Lcom/mycompany/app/image/ImageViewPageEffect$83;

    .line 121
    .line 122
    invoke-direct {v2, p0}, Lcom/mycompany/app/image/ImageViewPageEffect$83;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 126
    .line 127
    .line 128
    return-object v1

    .line 129
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 130
    .line 131
    if-nez v0, :cond_8

    .line 132
    .line 133
    :goto_3
    return-object v1

    .line 134
    :cond_8
    new-instance v2, Lcom/mycompany/app/image/ImageViewPageEffect$82;

    .line 135
    .line 136
    invoke-direct {v2, p0}, Lcom/mycompany/app/image/ImageViewPageEffect$82;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 140
    .line 141
    .line 142
    return-object v1
.end method

.method public final m1()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->U0()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->A0()V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-virtual {p0, v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->q0(Z)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lcom/mycompany/app/main/MainListView$ListViewConfig;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    iget v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    .line 26
    .line 27
    const/16 v3, 0xc

    .line 28
    .line 29
    const/16 v4, 0xe

    .line 30
    .line 31
    if-ne v2, v3, :cond_2

    .line 32
    .line 33
    iput v4, v1, Lcom/mycompany/app/main/MainListView$ListViewConfig;->a:I

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_2
    if-ne v2, v0, :cond_3

    .line 37
    .line 38
    iput v4, v1, Lcom/mycompany/app/main/MainListView$ListViewConfig;->a:I

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    const/4 v3, 0x2

    .line 42
    if-ne v2, v3, :cond_4

    .line 43
    .line 44
    const/16 v2, 0xf

    .line 45
    .line 46
    iput v2, v1, Lcom/mycompany/app/main/MainListView$ListViewConfig;->a:I

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_4
    const/4 v3, 0x3

    .line 50
    if-ne v2, v3, :cond_5

    .line 51
    .line 52
    const/16 v2, 0x10

    .line 53
    .line 54
    iput v2, v1, Lcom/mycompany/app/main/MainListView$ListViewConfig;->a:I

    .line 55
    .line 56
    :cond_5
    :goto_1
    iput-boolean v0, v1, Lcom/mycompany/app/main/MainListView$ListViewConfig;->i:Z

    .line 57
    .line 58
    :goto_2
    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->o0:Z

    .line 60
    .line 61
    new-instance v0, Lcom/mycompany/app/dialog/DialogListBook;

    .line 62
    .line 63
    iget-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 64
    .line 65
    iget-object v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 66
    .line 67
    new-instance v4, Lcom/mycompany/app/image/ImageViewPageEffect$46;

    .line 68
    .line 69
    invoke-direct {v4, p0}, Lcom/mycompany/app/image/ImageViewPageEffect$46;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 70
    .line 71
    .line 72
    invoke-direct {v0, v2, v1, v3, v4}, Lcom/mycompany/app/dialog/DialogListBook;-><init>(Lcom/mycompany/app/main/MainActivity;Lcom/mycompany/app/main/MainListView$ListViewConfig;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogListBook$ListBookListener;)V

    .line 73
    .line 74
    .line 75
    iput-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->s0:Lcom/mycompany/app/dialog/DialogListBook;

    .line 76
    .line 77
    new-instance v1, Lcom/mycompany/app/image/ImageViewPageEffect$47;

    .line 78
    .line 79
    invoke-direct {v1, p0}, Lcom/mycompany/app/image/ImageViewPageEffect$47;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogNormal;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public final n()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 9
    .line 10
    const-class v2, Lcom/mycompany/app/main/list/MainListImage;

    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "EXTRA_TYPE"

    .line 16
    .line 17
    iget v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    .line 23
    .line 24
    const/16 v2, 0xc

    .line 25
    .line 26
    const-string v3, "EXTRA_PATH"

    .line 27
    .line 28
    if-ne v1, v2, :cond_1

    .line 29
    .line 30
    sget-object v1, Lcom/mycompany/app/pref/PrefPath;->j:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    :goto_0
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 42
    .line 43
    const/4 v2, 0x7

    .line 44
    invoke-virtual {v1, v0, v2}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final n0(Lcom/mycompany/app/main/MainItem$ChildItem;Z)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x1

    .line 6
    if-eq v0, v3, :cond_0

    .line 7
    .line 8
    if-eq v0, v2, :cond_0

    .line 9
    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v4, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 14
    .line 15
    iput-object v4, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->u:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v4, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 18
    .line 19
    iput-object v4, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 20
    .line 21
    iget v4, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->s:I

    .line 22
    .line 23
    iput v4, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    iput-object v5, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->H:Ljava/lang/String;

    .line 27
    .line 28
    if-nez p2, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    if-ne v0, v3, :cond_2

    .line 32
    .line 33
    sget-boolean p2, Lcom/mycompany/app/pref/PrefList;->q:Z

    .line 34
    .line 35
    if-nez p2, :cond_4

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    if-ne v0, v2, :cond_3

    .line 39
    .line 40
    sget-boolean p2, Lcom/mycompany/app/pref/PrefList;->q:Z

    .line 41
    .line 42
    if-nez p2, :cond_4

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    if-ne v0, v1, :cond_4

    .line 46
    .line 47
    sget-boolean p2, Lcom/mycompany/app/pref/PrefList;->q:Z

    .line 48
    .line 49
    if-nez p2, :cond_4

    .line 50
    .line 51
    :goto_0
    return-void

    .line 52
    :cond_4
    iput v4, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 53
    .line 54
    iget p2, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->t:I

    .line 55
    .line 56
    iput p2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 57
    .line 58
    iget p1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->u:I

    .line 59
    .line 60
    iput p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 61
    .line 62
    return-void
.end method

.method public final n1(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->R:Lcom/mycompany/app/image/ImageGifView;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Lcom/mycompany/app/image/ImageGifView;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/mycompany/app/image/ImageGifView;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->R:Lcom/mycompany/app/image/ImageGifView;

    .line 18
    .line 19
    const/16 v1, 0x8

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyFadeFrame;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 25
    .line 26
    new-instance v1, Lcom/mycompany/app/image/ImageViewPageEffect$22;

    .line 27
    .line 28
    invoke-direct {v1, p0, p1}, Lcom/mycompany/app/image/ImageViewPageEffect$22;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    return-void
.end method

.method public final o()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->U0()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    :goto_0
    return-void

    .line 18
    :cond_2
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->C0()V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-virtual {p0, v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->q0(Z)V

    .line 23
    .line 24
    .line 25
    iput-boolean v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->N0:Z

    .line 26
    .line 27
    sput-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->o0:Z

    .line 31
    .line 32
    new-instance v0, Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const/4 v3, 0x2

    .line 41
    const/4 v4, 0x0

    .line 42
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mycompany/app/dialog/DialogSeekBright;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/Window;ILcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->q0:Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 46
    .line 47
    new-instance v1, Lcom/mycompany/app/image/ImageViewPageEffect$43;

    .line 48
    .line 49
    invoke-direct {v1, p0}, Lcom/mycompany/app/image/ImageViewPageEffect$43;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final o0()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->O:Lcom/mycompany/app/view/MyImageView;

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
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    return v1

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->O:Lcom/mycompany/app/view/MyImageView;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyImageView;->getDraw()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-ne v0, v1, :cond_2

    .line 22
    .line 23
    const/4 v0, 0x3

    .line 24
    return v0

    .line 25
    :cond_2
    const/4 v0, 0x2

    .line 26
    return v0
.end method

.method public final o1(Z)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefImage;->n:Z

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->R:Lcom/mycompany/app/image/ImageGifView;

    .line 6
    .line 7
    if-nez v0, :cond_6

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->Y:Lcom/mycompany/app/view/MyFadeLinear;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_4

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->Q0()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    sget v0, Lcom/mycompany/app/pref/PrefImage;->u:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    sget v0, Lcom/mycompany/app/pref/PrefImage;->t:I

    .line 24
    .line 25
    :goto_0
    const/4 v1, 0x3

    .line 26
    if-ne v0, v1, :cond_2

    .line 27
    .line 28
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->Z:Landroid/view/View;

    .line 29
    .line 30
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_swipe_up:I

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->Z:Landroid/view/View;

    .line 37
    .line 38
    iget-boolean v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->f:Z

    .line 39
    .line 40
    if-eqz v2, :cond_3

    .line 41
    .line 42
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_swipe_l2r:I

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_3
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_swipe_r2l:I

    .line 46
    .line 47
    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 48
    .line 49
    .line 50
    :goto_2
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->a0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 51
    .line 52
    sget-object v2, Lcom/mycompany/app/main/MainConst;->e0:[I

    .line 53
    .line 54
    aget v0, v2, v0

    .line 55
    .line 56
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 60
    .line 61
    sget-boolean v1, Lcom/mycompany/app/pref/PrefImage;->s:Z

    .line 62
    .line 63
    if-eqz v1, :cond_4

    .line 64
    .line 65
    sget v1, Lnet/kaki87/soul2/testing/R$string;->reverse:I

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_4
    sget v1, Lnet/kaki87/soul2/testing/R$string;->forward:I

    .line 69
    .line 70
    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->Y:Lcom/mycompany/app/view/MyFadeLinear;

    .line 74
    .line 75
    new-instance v1, Lcom/mycompany/app/image/ImageViewPageEffect$13;

    .line 76
    .line 77
    invoke-direct {v1, p0}, Lcom/mycompany/app/image/ImageViewPageEffect$13;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    .line 82
    .line 83
    if-eqz p1, :cond_5

    .line 84
    .line 85
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->Y:Lcom/mycompany/app/view/MyFadeLinear;

    .line 86
    .line 87
    const/4 v0, 0x0

    .line 88
    invoke-virtual {p1, v0, v0}, Lcom/mycompany/app/view/MyFadeLinear;->d(ZZ)V

    .line 89
    .line 90
    .line 91
    :cond_5
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->Y:Lcom/mycompany/app/view/MyFadeLinear;

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyFadeLinear;->g()V

    .line 94
    .line 95
    .line 96
    :cond_6
    :goto_4
    return-void
.end method

.method public final p()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->U0()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    :goto_0
    return-void

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->t0:Lcom/mycompany/app/dialog/DialogCapture;

    .line 19
    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogCapture;->dismiss()V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->t0:Lcom/mycompany/app/dialog/DialogCapture;

    .line 27
    .line 28
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 29
    .line 30
    new-instance v1, Lcom/mycompany/app/image/ImageViewPageEffect$48;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Lcom/mycompany/app/image/ImageViewPageEffect$48;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final p0(IZ)I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto/16 :goto_3

    .line 7
    .line 8
    :cond_0
    iget v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 9
    .line 10
    if-nez v2, :cond_1

    .line 11
    .line 12
    goto/16 :goto_3

    .line 13
    .line 14
    :cond_1
    iget-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 15
    .line 16
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->H5(Lcom/mycompany/app/main/MainActivity;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x1

    .line 21
    if-nez v2, :cond_2

    .line 22
    .line 23
    return v3

    .line 24
    :cond_2
    invoke-virtual {v0, p1}, Lcom/mycompany/app/compress/Compress;->g(I)Lcom/mycompany/app/compress/CompressCache$BitmapInfo;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const/4 v4, 0x2

    .line 29
    if-nez v2, :cond_9

    .line 30
    .line 31
    if-eqz p2, :cond_9

    .line 32
    .line 33
    iget p2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->p:I

    .line 34
    .line 35
    if-eqz p2, :cond_3

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Lcom/mycompany/app/compress/Compress;->n(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-static {p2}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-nez p2, :cond_3

    .line 46
    .line 47
    goto/16 :goto_3

    .line 48
    .line 49
    :cond_3
    new-instance p2, Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 50
    .line 51
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 52
    .line 53
    .line 54
    const/16 v2, 0x8

    .line 55
    .line 56
    iput v2, p2, Lcom/mycompany/app/main/MainItem$ViewItem;->a:I

    .line 57
    .line 58
    iput-object v0, p2, Lcom/mycompany/app/main/MainItem$ViewItem;->b:Lcom/mycompany/app/compress/Compress;

    .line 59
    .line 60
    iget-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->m:Ljava/lang/String;

    .line 61
    .line 62
    iput-object v2, p2, Lcom/mycompany/app/main/MainItem$ViewItem;->r:Ljava/lang/String;

    .line 63
    .line 64
    iget v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 65
    .line 66
    iput v2, p2, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 67
    .line 68
    iget-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->Q0()Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    iget v6, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    .line 75
    .line 76
    if-ne v6, v4, :cond_4

    .line 77
    .line 78
    move v6, v3

    .line 79
    goto :goto_0

    .line 80
    :cond_4
    move v6, v1

    .line 81
    :goto_0
    invoke-static {v2, v5, v6}, Lcom/mycompany/app/main/MainUtil;->l0(Landroid/content/Context;ZZ)I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    iput v2, p2, Lcom/mycompany/app/main/MainItem$ViewItem;->t:I

    .line 86
    .line 87
    iget v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    .line 88
    .line 89
    const/16 v5, 0xc

    .line 90
    .line 91
    if-ne v2, v5, :cond_5

    .line 92
    .line 93
    move v2, v3

    .line 94
    goto :goto_1

    .line 95
    :cond_5
    move v2, v1

    .line 96
    :goto_1
    iput-boolean v2, p2, Lcom/mycompany/app/main/MainItem$ViewItem;->u:Z

    .line 97
    .line 98
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    iget-object v6, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c0:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 103
    .line 104
    invoke-virtual {v2, p2, v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->k(Lcom/mycompany/app/main/MainItem$ViewItem;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/ImageLoader$ImageLoadItem;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    iget v6, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->p:I

    .line 109
    .line 110
    if-nez v6, :cond_7

    .line 111
    .line 112
    iget v6, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    .line 113
    .line 114
    if-ne v6, v5, :cond_7

    .line 115
    .line 116
    iget-object v5, v2, Lcom/nostra13/universalimageloader/core/ImageLoader$ImageLoadItem;->a:Ljava/lang/String;

    .line 117
    .line 118
    iget v6, v2, Lcom/nostra13/universalimageloader/core/ImageLoader$ImageLoadItem;->c:I

    .line 119
    .line 120
    if-ne v6, v3, :cond_7

    .line 121
    .line 122
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    if-nez v3, :cond_7

    .line 127
    .line 128
    invoke-static {v5}, Lcom/mycompany/app/main/MainUtil;->a3(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    if-nez v6, :cond_6

    .line 137
    .line 138
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v6

    .line 142
    if-nez v6, :cond_6

    .line 143
    .line 144
    iget p2, p2, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 145
    .line 146
    invoke-virtual {v0, p2, v5, v3}, Lcom/mycompany/app/compress/Compress;->U(ILjava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_6
    iget p2, p2, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 151
    .line 152
    const-string v3, ""

    .line 153
    .line 154
    invoke-virtual {v0, p2, v5, v3}, Lcom/mycompany/app/compress/Compress;->U(ILjava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    :cond_7
    :goto_2
    invoke-virtual {v0, p1}, Lcom/mycompany/app/compress/Compress;->g(I)Lcom/mycompany/app/compress/CompressCache$BitmapInfo;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    if-nez p2, :cond_8

    .line 162
    .line 163
    iget-object v2, v2, Lcom/nostra13/universalimageloader/core/ImageLoader$ImageLoadItem;->b:Landroid/graphics/Bitmap;

    .line 164
    .line 165
    if-eqz v2, :cond_8

    .line 166
    .line 167
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    if-nez v3, :cond_8

    .line 172
    .line 173
    new-instance p2, Lcom/mycompany/app/compress/CompressCache$BitmapInfo;

    .line 174
    .line 175
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    invoke-direct {p2, v3, v2, v1}, Lcom/mycompany/app/compress/CompressCache$BitmapInfo;-><init>(III)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, p1}, Lcom/mycompany/app/compress/Compress;->n(I)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-static {p1, p2}, Lcom/mycompany/app/compress/Compress;->P(Ljava/lang/String;Lcom/mycompany/app/compress/CompressCache$BitmapInfo;)V

    .line 191
    .line 192
    .line 193
    :cond_8
    move-object v2, p2

    .line 194
    :cond_9
    if-nez v2, :cond_a

    .line 195
    .line 196
    :goto_3
    return v1

    .line 197
    :cond_a
    iget p1, v2, Lcom/mycompany/app/compress/CompressCache$BitmapInfo;->a:I

    .line 198
    .line 199
    iget p2, v2, Lcom/mycompany/app/compress/CompressCache$BitmapInfo;->b:I

    .line 200
    .line 201
    if-le p1, p2, :cond_c

    .line 202
    .line 203
    iget-boolean p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->f:Z

    .line 204
    .line 205
    if-eqz p1, :cond_b

    .line 206
    .line 207
    const/4 p1, 0x4

    .line 208
    return p1

    .line 209
    :cond_b
    const/4 p1, 0x3

    .line 210
    return p1

    .line 211
    :cond_c
    return v4
.end method

.method public final p1()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->e0:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewControl;->B()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->I0(Z)V

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->W:I

    .line 22
    .line 23
    iget v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->X:I

    .line 24
    .line 25
    invoke-virtual {p0, v1, v2}, Lcom/mycompany/app/image/ImageViewPageEffect;->d1(II)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Lcom/mycompany/app/image/ImageViewControl;->z(Z)V

    .line 31
    .line 32
    .line 33
    :cond_2
    :goto_0
    return-void
.end method

.method public final q()V
    .locals 8

    .line 1
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 2
    .line 3
    if-eqz v1, :cond_6

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->K:Lcom/mycompany/app/curl/CurlView;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->U:Lcom/mycompany/app/image/ImageCoverView;

    .line 12
    .line 13
    if-eqz v1, :cond_6

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/mycompany/app/image/ImageCoverView;->d()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 23
    .line 24
    if-nez v1, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->R0()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_6

    .line 31
    .line 32
    iget-object v5, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 33
    .line 34
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 35
    .line 36
    iget v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 37
    .line 38
    iget v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 39
    .line 40
    const/4 v7, 0x0

    .line 41
    const/4 v4, 0x2

    .line 42
    const/4 v6, 0x0

    .line 43
    move-object v0, p0

    .line 44
    invoke-virtual/range {v0 .. v7}, Lcom/mycompany/app/image/ImageViewPageEffect;->c1(IIIILjava/lang/String;ZZ)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    sget-boolean v2, Lcom/mycompany/app/pref/PrefImage;->s:Z

    .line 49
    .line 50
    const/4 v3, 0x1

    .line 51
    if-eqz v2, :cond_4

    .line 52
    .line 53
    iget v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 54
    .line 55
    sub-int/2addr v1, v3

    .line 56
    if-ne v2, v1, :cond_3

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->R0()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_3

    .line 63
    .line 64
    iget-object v5, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 65
    .line 66
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 67
    .line 68
    iget v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 69
    .line 70
    iget v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 71
    .line 72
    const/4 v7, 0x0

    .line 73
    const/4 v4, 0x2

    .line 74
    const/4 v6, 0x0

    .line 75
    move-object v0, p0

    .line 76
    invoke-virtual/range {v0 .. v7}, Lcom/mycompany/app/image/ImageViewPageEffect;->c1(IIIILjava/lang/String;ZZ)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_3
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 81
    .line 82
    add-int/2addr v1, v3

    .line 83
    iget v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 84
    .line 85
    rem-int/2addr v1, v2

    .line 86
    goto :goto_0

    .line 87
    :cond_4
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 88
    .line 89
    if-nez v1, :cond_5

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->R0()Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_5

    .line 96
    .line 97
    iget-object v5, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 98
    .line 99
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 100
    .line 101
    iget v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 102
    .line 103
    iget v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 104
    .line 105
    const/4 v7, 0x0

    .line 106
    const/4 v4, 0x2

    .line 107
    const/4 v6, 0x0

    .line 108
    move-object v0, p0

    .line 109
    invoke-virtual/range {v0 .. v7}, Lcom/mycompany/app/image/ImageViewPageEffect;->c1(IIIILjava/lang/String;ZZ)V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :cond_5
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 114
    .line 115
    iget v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 116
    .line 117
    invoke-static {v1, v2, v3, v2}, Landroid/support/v4/media/a;->B(IIII)I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    :goto_0
    invoke-virtual {p0, v1}, Lcom/mycompany/app/image/ImageViewPageEffect;->h(I)V

    .line 122
    .line 123
    .line 124
    :cond_6
    :goto_1
    return-void
.end method

.method public final q0(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyFadeRelative;->d(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final r(Landroid/view/View;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->L0()V

    .line 12
    .line 13
    .line 14
    if-nez p1, :cond_2

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

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
    sget v2, Lnet/kaki87/soul2/testing/R$string;->forward:I

    .line 33
    .line 34
    sget-boolean v3, Lcom/mycompany/app/pref/PrefImage;->s:Z

    .line 35
    .line 36
    const/4 v4, 0x1

    .line 37
    xor-int/2addr v3, v4

    .line 38
    invoke-direct {v0, v1, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 45
    .line 46
    sget v1, Lnet/kaki87/soul2/testing/R$string;->reverse:I

    .line 47
    .line 48
    sget-boolean v2, Lcom/mycompany/app/pref/PrefImage;->s:Z

    .line 49
    .line 50
    invoke-direct {v0, v4, v1, v2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    new-instance v2, Lcom/mycompany/app/view/MyPopupMenu;

    .line 57
    .line 58
    iget-object v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 59
    .line 60
    iget-object v4, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 61
    .line 62
    new-instance v8, Lcom/mycompany/app/image/ImageViewPageEffect$35;

    .line 63
    .line 64
    invoke-direct {v8, p0}, Lcom/mycompany/app/image/ImageViewPageEffect$35;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 65
    .line 66
    .line 67
    const/4 v7, 0x1

    .line 68
    move-object v5, p1

    .line 69
    invoke-direct/range {v2 .. v8}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 70
    .line 71
    .line 72
    iput-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 73
    .line 74
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 75
    .line 76
    if-eqz p1, :cond_4

    .line 77
    .line 78
    iput-object v2, p1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 79
    .line 80
    :cond_4
    :goto_0
    return-void
.end method

.method public final r0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->t0()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->z0()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->C0()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->y0()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->A0()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->t0:Lcom/mycompany/app/dialog/DialogCapture;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogCapture;->dismiss()V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->t0:Lcom/mycompany/app/dialog/DialogCapture;

    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->s0()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->E0()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->B0()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->F0()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->H0()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->x0()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->v0()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->u0()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->w0()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->D0()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->G0()V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final s()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->R0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v6, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 8
    .line 9
    iget v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 10
    .line 11
    iget v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 12
    .line 13
    iget v4, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 14
    .line 15
    const/4 v8, 0x1

    .line 16
    const/4 v5, 0x1

    .line 17
    const/4 v7, 0x1

    .line 18
    move-object v1, p0

    .line 19
    invoke-virtual/range {v1 .. v8}, Lcom/mycompany/app/image/ImageViewPageEffect;->c1(IIIILjava/lang/String;ZZ)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    move-object v1, p0

    .line 24
    sget-boolean v0, Lcom/mycompany/app/pref/PrefImage;->s:Z

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    iget v0, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget v0, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 35
    .line 36
    add-int/lit8 v2, v0, -0x1

    .line 37
    .line 38
    :goto_0
    invoke-virtual {p0, v2}, Lcom/mycompany/app/image/ImageViewPageEffect;->h(I)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    iget v0, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 43
    .line 44
    iget v3, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 45
    .line 46
    add-int/lit8 v3, v3, -0x1

    .line 47
    .line 48
    if-eq v0, v3, :cond_3

    .line 49
    .line 50
    move v2, v3

    .line 51
    :cond_3
    invoke-virtual {p0, v2}, Lcom/mycompany/app/image/ImageViewPageEffect;->h(I)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final s0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->u0:Lcom/mycompany/app/dialog/DialogDownUrl;

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
    iput-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->u0:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->N0:Z

    .line 13
    .line 14
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyFadeRelative;->d(Z)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public final t()V
    .locals 0

    .line 1
    return-void
.end method

.method public final t0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->G:Lcom/mycompany/app/dialog/DialogEditText;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogEditText;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->G:Lcom/mycompany/app/dialog/DialogEditText;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->N0:Z

    .line 13
    .line 14
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final u()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->m1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final u0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->X0:Lcom/mycompany/app/dialog/DialogConfirm;

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
    iput-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->X0:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->N0:Z

    .line 13
    .line 14
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final v()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->U:Lcom/mycompany/app/image/ImageCoverView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageCoverView;->d()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    return v0
.end method

.method public final v0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->W0:Lcom/mycompany/app/dialog/DialogConfirm;

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
    iput-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->W0:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->N0:Z

    .line 13
    .line 14
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final w()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->U0()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    :goto_0
    return-void

    .line 18
    :cond_2
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->y0()V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-virtual {p0, v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->q0(Z)V

    .line 23
    .line 24
    .line 25
    iput-boolean v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->N0:Z

    .line 26
    .line 27
    sput-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 28
    .line 29
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    if-eqz v1, :cond_8

    .line 33
    .line 34
    iget v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 35
    .line 36
    if-lez v3, :cond_8

    .line 37
    .line 38
    iget v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 39
    .line 40
    invoke-virtual {v1, v3}, Lcom/mycompany/app/compress/Compress;->n(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iget v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    .line 45
    .line 46
    const/16 v4, 0xc

    .line 47
    .line 48
    if-ne v3, v4, :cond_3

    .line 49
    .line 50
    move v4, v0

    .line 51
    goto :goto_1

    .line 52
    :cond_3
    move v4, v2

    .line 53
    :goto_1
    const/4 v5, 0x2

    .line 54
    if-ne v3, v5, :cond_4

    .line 55
    .line 56
    sget-boolean v3, Lcom/mycompany/app/pref/PrefPdf;->k:Z

    .line 57
    .line 58
    if-eqz v3, :cond_4

    .line 59
    .line 60
    iget-object v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->Q0()Z

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    invoke-static {v3, v5, v0}, Lcom/mycompany/app/main/MainUtil;->l0(Landroid/content/Context;ZZ)I

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 71
    .line 72
    invoke-virtual {v0, v1, v5, v4}, Lcom/mycompany/app/compress/Compress;->f(Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    goto :goto_2

    .line 77
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 78
    .line 79
    invoke-virtual {v0, v1, v5, v4}, Lcom/mycompany/app/compress/Compress;->f(Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    if-eqz v0, :cond_5

    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-eqz v3, :cond_6

    .line 90
    .line 91
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 92
    .line 93
    iget-object v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->Q0()Z

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    invoke-static {v3, v6, v2}, Lcom/mycompany/app/main/MainUtil;->l0(Landroid/content/Context;ZZ)I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    invoke-virtual {v0, v1, v3, v4}, Lcom/mycompany/app/compress/Compress;->f(Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    :cond_6
    :goto_2
    if-eqz v0, :cond_7

    .line 108
    .line 109
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-eqz v1, :cond_9

    .line 114
    .line 115
    :cond_7
    if-nez v4, :cond_9

    .line 116
    .line 117
    new-instance v0, Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 118
    .line 119
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 120
    .line 121
    .line 122
    const/16 v1, 0x8

    .line 123
    .line 124
    iput v1, v0, Lcom/mycompany/app/main/MainItem$ViewItem;->a:I

    .line 125
    .line 126
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 127
    .line 128
    iput-object v1, v0, Lcom/mycompany/app/main/MainItem$ViewItem;->b:Lcom/mycompany/app/compress/Compress;

    .line 129
    .line 130
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->m:Ljava/lang/String;

    .line 131
    .line 132
    iput-object v1, v0, Lcom/mycompany/app/main/MainItem$ViewItem;->r:Ljava/lang/String;

    .line 133
    .line 134
    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 135
    .line 136
    iput v1, v0, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 137
    .line 138
    iput v5, v0, Lcom/mycompany/app/main/MainItem$ViewItem;->t:I

    .line 139
    .line 140
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    iget-object v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c0:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 145
    .line 146
    invoke-virtual {v1, v0, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->j(Lcom/mycompany/app/main/MainItem$ViewItem;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/Bitmap;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    goto :goto_3

    .line 151
    :cond_8
    const/4 v0, 0x0

    .line 152
    :cond_9
    :goto_3
    iput-boolean v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->o0:Z

    .line 153
    .line 154
    new-instance v1, Lcom/mycompany/app/dialog/DialogImageBack;

    .line 155
    .line 156
    iget-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 157
    .line 158
    new-instance v3, Lcom/mycompany/app/image/ImageViewPageEffect$44;

    .line 159
    .line 160
    invoke-direct {v3, p0}, Lcom/mycompany/app/image/ImageViewPageEffect$44;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 161
    .line 162
    .line 163
    invoke-direct {v1, v2, v0, v3}, Lcom/mycompany/app/dialog/DialogImageBack;-><init>(Landroid/app/Activity;Landroid/graphics/Bitmap;Lcom/mycompany/app/dialog/DialogSetImage$ChangedListener;)V

    .line 164
    .line 165
    .line 166
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->r0:Lcom/mycompany/app/dialog/DialogImageBack;

    .line 167
    .line 168
    new-instance v0, Lcom/mycompany/app/image/ImageViewPageEffect$45;

    .line 169
    .line 170
    invoke-direct {v0, p0}, Lcom/mycompany/app/image/ImageViewPageEffect$45;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 174
    .line 175
    .line 176
    return-void
.end method

.method public final w0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->Y0:Lcom/mycompany/app/dialog/DialogConfirm;

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
    iput-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->Y0:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->N0:Z

    .line 13
    .line 14
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final x()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->U0()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    :goto_0
    return-void

    .line 18
    :cond_2
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->F0()V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-virtual {p0, v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->q0(Z)V

    .line 23
    .line 24
    .line 25
    iput-boolean v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->N0:Z

    .line 26
    .line 27
    sput-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->o0:Z

    .line 31
    .line 32
    new-instance v0, Lcom/mycompany/app/dialog/DialogSetImage;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 35
    .line 36
    new-instance v2, Lcom/mycompany/app/image/ImageViewPageEffect$56;

    .line 37
    .line 38
    invoke-direct {v2, p0}, Lcom/mycompany/app/image/ImageViewPageEffect$56;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, v1, v2}, Lcom/mycompany/app/dialog/DialogSetImage;-><init>(Lcom/mycompany/app/main/MainActivity;Lcom/mycompany/app/dialog/DialogSetImage$ChangedListener;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->x0:Lcom/mycompany/app/dialog/DialogSetImage;

    .line 45
    .line 46
    new-instance v1, Lcom/mycompany/app/image/ImageViewPageEffect$57;

    .line 47
    .line 48
    invoke-direct {v1, p0}, Lcom/mycompany/app/image/ImageViewPageEffect$57;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final x0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V0:Lcom/mycompany/app/dialog/DialogConfirm;

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
    iput-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V0:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->N0:Z

    .line 13
    .line 14
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final y()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 9
    .line 10
    const-class v2, Lcom/mycompany/app/setting/SettingImage;

    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    const/4 v2, 0x2

    if-ne v1, v2, :settings_launch

    const-string v1, "EXTRA_PDF_PREVIEW"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :settings_launch

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-virtual {v1, v0, v2}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final y0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->r0:Lcom/mycompany/app/dialog/DialogImageBack;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogImageBack;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->r0:Lcom/mycompany/app/dialog/DialogImageBack;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->N0:Z

    .line 13
    .line 14
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final z(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->U0()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    if-eqz p1, :cond_4

    .line 14
    .line 15
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 16
    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewPageEffect;->X0()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->m1:Lcom/mycompany/app/web/WebTransOcrCtrl;

    .line 24
    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_3
    new-instance v0, Lcom/mycompany/app/web/WebTransOcrCtrl;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 31
    .line 32
    invoke-direct {v0, v1}, Lcom/mycompany/app/web/WebTransOcrCtrl;-><init>(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->m1:Lcom/mycompany/app/web/WebTransOcrCtrl;

    .line 36
    .line 37
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->n1:Landroid/view/View;

    .line 38
    .line 39
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 40
    .line 41
    new-instance v0, Lcom/mycompany/app/image/ImageViewPageEffect$58;

    .line 42
    .line 43
    invoke-direct {v0, p0}, Lcom/mycompany/app/image/ImageViewPageEffect$58;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 50
    .line 51
    if-eqz p1, :cond_4

    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyFadeRelative;->setAutoHide(Z)V

    .line 55
    .line 56
    .line 57
    :cond_4
    :goto_0
    return-void
.end method

.method public final z0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->p0:Lcom/mycompany/app/dialog/DialogImageType;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogImageType;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->p0:Lcom/mycompany/app/dialog/DialogImageType;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->N0:Z

    .line 13
    .line 14
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
