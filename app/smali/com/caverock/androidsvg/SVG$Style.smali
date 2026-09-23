.class Lcom/caverock/androidsvg/SVG$Style;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caverock/androidsvg/SVG$Style$RenderQuality;,
        Lcom/caverock/androidsvg/SVG$Style$VectorEffect;,
        Lcom/caverock/androidsvg/SVG$Style$TextDirection;,
        Lcom/caverock/androidsvg/SVG$Style$TextDecoration;,
        Lcom/caverock/androidsvg/SVG$Style$TextAnchor;,
        Lcom/caverock/androidsvg/SVG$Style$FontStyle;,
        Lcom/caverock/androidsvg/SVG$Style$LineJoin;,
        Lcom/caverock/androidsvg/SVG$Style$LineCap;,
        Lcom/caverock/androidsvg/SVG$Style$FillRule;
    }
.end annotation


# instance fields
.field public A:Lcom/caverock/androidsvg/SVG$CSSClipRect;

.field public B:Ljava/lang/String;

.field public C:Ljava/lang/String;

.field public D:Ljava/lang/String;

.field public E:Ljava/lang/Boolean;

.field public F:Ljava/lang/Boolean;

.field public G:Lcom/caverock/androidsvg/SVG$SvgPaint;

.field public H:Ljava/lang/Float;

.field public I:Ljava/lang/String;

.field public J:Lcom/caverock/androidsvg/SVG$Style$FillRule;

.field public K:Ljava/lang/String;

.field public L:Lcom/caverock/androidsvg/SVG$SvgPaint;

.field public M:Ljava/lang/Float;

.field public N:Lcom/caverock/androidsvg/SVG$SvgPaint;

.field public O:Ljava/lang/Float;

.field public P:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

.field public Q:Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

.field public c:J

.field public f:Lcom/caverock/androidsvg/SVG$SvgPaint;

.field public g:Lcom/caverock/androidsvg/SVG$Style$FillRule;

.field public h:Ljava/lang/Float;

.field public i:Lcom/caverock/androidsvg/SVG$SvgPaint;

.field public j:Ljava/lang/Float;

.field public k:Lcom/caverock/androidsvg/SVG$Length;

.field public l:Lcom/caverock/androidsvg/SVG$Style$LineCap;

.field public m:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

.field public n:Ljava/lang/Float;

.field public o:[Lcom/caverock/androidsvg/SVG$Length;

.field public p:Lcom/caverock/androidsvg/SVG$Length;

.field public q:Ljava/lang/Float;

.field public r:Lcom/caverock/androidsvg/SVG$Colour;

.field public s:Ljava/util/ArrayList;

.field public t:Lcom/caverock/androidsvg/SVG$Length;

.field public u:Ljava/lang/Integer;

.field public v:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

.field public w:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

.field public x:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

.field public y:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

.field public z:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 7
    .line 8
    return-void
.end method

.method public static a()Lcom/caverock/androidsvg/SVG$Style;
    .locals 8

    .line 1
    new-instance v0, Lcom/caverock/androidsvg/SVG$Style;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Style;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, -0x1

    .line 7
    .line 8
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 9
    .line 10
    sget-object v1, Lcom/caverock/androidsvg/SVG$Colour;->f:Lcom/caverock/androidsvg/SVG$Colour;

    .line 11
    .line 12
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->f:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 13
    .line 14
    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$FillRule;->c:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    .line 15
    .line 16
    iput-object v2, v0, Lcom/caverock/androidsvg/SVG$Style;->g:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    .line 17
    .line 18
    const/high16 v3, 0x3f800000    # 1.0f

    .line 19
    .line 20
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->h:Ljava/lang/Float;

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    iput-object v5, v0, Lcom/caverock/androidsvg/SVG$Style;->i:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 28
    .line 29
    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->j:Ljava/lang/Float;

    .line 30
    .line 31
    new-instance v6, Lcom/caverock/androidsvg/SVG$Length;

    .line 32
    .line 33
    invoke-direct {v6, v3}, Lcom/caverock/androidsvg/SVG$Length;-><init>(F)V

    .line 34
    .line 35
    .line 36
    iput-object v6, v0, Lcom/caverock/androidsvg/SVG$Style;->k:Lcom/caverock/androidsvg/SVG$Length;

    .line 37
    .line 38
    sget-object v3, Lcom/caverock/androidsvg/SVG$Style$LineCap;->c:Lcom/caverock/androidsvg/SVG$Style$LineCap;

    .line 39
    .line 40
    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->l:Lcom/caverock/androidsvg/SVG$Style$LineCap;

    .line 41
    .line 42
    sget-object v3, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->c:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    .line 43
    .line 44
    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->m:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    .line 45
    .line 46
    const/high16 v3, 0x40800000    # 4.0f

    .line 47
    .line 48
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->n:Ljava/lang/Float;

    .line 53
    .line 54
    iput-object v5, v0, Lcom/caverock/androidsvg/SVG$Style;->o:[Lcom/caverock/androidsvg/SVG$Length;

    .line 55
    .line 56
    new-instance v3, Lcom/caverock/androidsvg/SVG$Length;

    .line 57
    .line 58
    const/4 v6, 0x0

    .line 59
    invoke-direct {v3, v6}, Lcom/caverock/androidsvg/SVG$Length;-><init>(F)V

    .line 60
    .line 61
    .line 62
    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->p:Lcom/caverock/androidsvg/SVG$Length;

    .line 63
    .line 64
    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->q:Ljava/lang/Float;

    .line 65
    .line 66
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->r:Lcom/caverock/androidsvg/SVG$Colour;

    .line 67
    .line 68
    iput-object v5, v0, Lcom/caverock/androidsvg/SVG$Style;->s:Ljava/util/ArrayList;

    .line 69
    .line 70
    new-instance v3, Lcom/caverock/androidsvg/SVG$Length;

    .line 71
    .line 72
    const/high16 v6, 0x41400000    # 12.0f

    .line 73
    .line 74
    sget-object v7, Lcom/caverock/androidsvg/SVG$Unit;->f:Lcom/caverock/androidsvg/SVG$Unit;

    .line 75
    .line 76
    invoke-direct {v3, v6, v7}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    .line 77
    .line 78
    .line 79
    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->t:Lcom/caverock/androidsvg/SVG$Length;

    .line 80
    .line 81
    const/16 v3, 0x190

    .line 82
    .line 83
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->u:Ljava/lang/Integer;

    .line 88
    .line 89
    sget-object v3, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->c:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    .line 90
    .line 91
    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->v:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    .line 92
    .line 93
    sget-object v3, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->c:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    .line 94
    .line 95
    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->w:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    .line 96
    .line 97
    sget-object v3, Lcom/caverock/androidsvg/SVG$Style$TextDirection;->c:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    .line 98
    .line 99
    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->x:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    .line 100
    .line 101
    sget-object v3, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->c:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    .line 102
    .line 103
    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->y:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    .line 104
    .line 105
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 106
    .line 107
    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->z:Ljava/lang/Boolean;

    .line 108
    .line 109
    iput-object v5, v0, Lcom/caverock/androidsvg/SVG$Style;->A:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    .line 110
    .line 111
    iput-object v5, v0, Lcom/caverock/androidsvg/SVG$Style;->B:Ljava/lang/String;

    .line 112
    .line 113
    iput-object v5, v0, Lcom/caverock/androidsvg/SVG$Style;->C:Ljava/lang/String;

    .line 114
    .line 115
    iput-object v5, v0, Lcom/caverock/androidsvg/SVG$Style;->D:Ljava/lang/String;

    .line 116
    .line 117
    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->E:Ljava/lang/Boolean;

    .line 118
    .line 119
    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->F:Ljava/lang/Boolean;

    .line 120
    .line 121
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->G:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 122
    .line 123
    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->H:Ljava/lang/Float;

    .line 124
    .line 125
    iput-object v5, v0, Lcom/caverock/androidsvg/SVG$Style;->I:Ljava/lang/String;

    .line 126
    .line 127
    iput-object v2, v0, Lcom/caverock/androidsvg/SVG$Style;->J:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    .line 128
    .line 129
    iput-object v5, v0, Lcom/caverock/androidsvg/SVG$Style;->K:Ljava/lang/String;

    .line 130
    .line 131
    iput-object v5, v0, Lcom/caverock/androidsvg/SVG$Style;->L:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 132
    .line 133
    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->M:Ljava/lang/Float;

    .line 134
    .line 135
    iput-object v5, v0, Lcom/caverock/androidsvg/SVG$Style;->N:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 136
    .line 137
    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->O:Ljava/lang/Float;

    .line 138
    .line 139
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;->c:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    .line 140
    .line 141
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->P:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    .line 142
    .line 143
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$RenderQuality;->c:Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

    .line 144
    .line 145
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->Q:Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

    .line 146
    .line 147
    return-object v0
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/caverock/androidsvg/SVG$Style;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$Style;->o:[Lcom/caverock/androidsvg/SVG$Length;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, [Lcom/caverock/androidsvg/SVG$Length;->clone()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, [Lcom/caverock/androidsvg/SVG$Length;

    .line 16
    .line 17
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->o:[Lcom/caverock/androidsvg/SVG$Length;

    .line 18
    .line 19
    :cond_0
    return-object v0
.end method
