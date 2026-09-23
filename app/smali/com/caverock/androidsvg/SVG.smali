.class public Lcom/caverock/androidsvg/SVG;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caverock/androidsvg/SVG$PathDefinition;,
        Lcom/caverock/androidsvg/SVG$PathInterface;,
        Lcom/caverock/androidsvg/SVG$SolidColor;,
        Lcom/caverock/androidsvg/SVG$Mask;,
        Lcom/caverock/androidsvg/SVG$View;,
        Lcom/caverock/androidsvg/SVG$Image;,
        Lcom/caverock/androidsvg/SVG$Pattern;,
        Lcom/caverock/androidsvg/SVG$ClipPath;,
        Lcom/caverock/androidsvg/SVG$SvgRadialGradient;,
        Lcom/caverock/androidsvg/SVG$SvgLinearGradient;,
        Lcom/caverock/androidsvg/SVG$Stop;,
        Lcom/caverock/androidsvg/SVG$GradientElement;,
        Lcom/caverock/androidsvg/SVG$Marker;,
        Lcom/caverock/androidsvg/SVG$Symbol;,
        Lcom/caverock/androidsvg/SVG$Switch;,
        Lcom/caverock/androidsvg/SVG$TextPath;,
        Lcom/caverock/androidsvg/SVG$TRef;,
        Lcom/caverock/androidsvg/SVG$TextSequence;,
        Lcom/caverock/androidsvg/SVG$TSpan;,
        Lcom/caverock/androidsvg/SVG$Text;,
        Lcom/caverock/androidsvg/SVG$TextPositionedContainer;,
        Lcom/caverock/androidsvg/SVG$TextContainer;,
        Lcom/caverock/androidsvg/SVG$TextChild;,
        Lcom/caverock/androidsvg/SVG$TextRoot;,
        Lcom/caverock/androidsvg/SVG$Polygon;,
        Lcom/caverock/androidsvg/SVG$PolyLine;,
        Lcom/caverock/androidsvg/SVG$Line;,
        Lcom/caverock/androidsvg/SVG$Ellipse;,
        Lcom/caverock/androidsvg/SVG$Circle;,
        Lcom/caverock/androidsvg/SVG$Rect;,
        Lcom/caverock/androidsvg/SVG$Path;,
        Lcom/caverock/androidsvg/SVG$Use;,
        Lcom/caverock/androidsvg/SVG$GraphicsElement;,
        Lcom/caverock/androidsvg/SVG$Defs;,
        Lcom/caverock/androidsvg/SVG$NotDirectlyRendered;,
        Lcom/caverock/androidsvg/SVG$Group;,
        Lcom/caverock/androidsvg/SVG$Svg;,
        Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;,
        Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;,
        Lcom/caverock/androidsvg/SVG$HasTransform;,
        Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;,
        Lcom/caverock/androidsvg/SVG$SvgContainer;,
        Lcom/caverock/androidsvg/SVG$SvgConditionalElement;,
        Lcom/caverock/androidsvg/SVG$SvgConditional;,
        Lcom/caverock/androidsvg/SVG$SvgElement;,
        Lcom/caverock/androidsvg/SVG$SvgElementBase;,
        Lcom/caverock/androidsvg/SVG$SvgObject;,
        Lcom/caverock/androidsvg/SVG$CSSClipRect;,
        Lcom/caverock/androidsvg/SVG$Length;,
        Lcom/caverock/androidsvg/SVG$PaintReference;,
        Lcom/caverock/androidsvg/SVG$CurrentColor;,
        Lcom/caverock/androidsvg/SVG$Colour;,
        Lcom/caverock/androidsvg/SVG$SvgPaint;,
        Lcom/caverock/androidsvg/SVG$Style;,
        Lcom/caverock/androidsvg/SVG$Box;,
        Lcom/caverock/androidsvg/SVG$GradientSpread;,
        Lcom/caverock/androidsvg/SVG$Unit;
    }
.end annotation


# instance fields
.field public a:Lcom/caverock/androidsvg/SVG$Svg;

.field public b:Lcom/caverock/androidsvg/CSSParser$Ruleset;

.field public c:Ljava/util/HashMap;


# direct methods
.method public static a(Lcom/caverock/androidsvg/SVG$SvgContainer;Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgElementBase;
    .locals 3

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->c:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    invoke-interface {p0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->a()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_4

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 32
    .line 33
    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 34
    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    move-object v1, v0

    .line 39
    check-cast v1, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 40
    .line 41
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->c:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_3

    .line 48
    .line 49
    return-object v1

    .line 50
    :cond_3
    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 51
    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 55
    .line 56
    invoke-static {v0, p1}, Lcom/caverock/androidsvg/SVG;->a(Lcom/caverock/androidsvg/SVG$SvgContainer;Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    return-object v0

    .line 63
    :cond_4
    const/4 p0, 0x0

    .line 64
    return-object p0
.end method

.method public static b(Ljava/io/InputStream;)Lcom/caverock/androidsvg/SVG;
    .locals 1

    .line 1
    new-instance v0, Lcom/caverock/androidsvg/SVGParser;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/caverock/androidsvg/SVGParser;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVGParser;->f(Ljava/io/InputStream;)Lcom/caverock/androidsvg/SVG;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method


# virtual methods
.method public final c(II)Landroid/graphics/Picture;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->b:Lcom/caverock/androidsvg/CSSParser$Ruleset;

    .line 2
    .line 3
    new-instance v1, Landroid/graphics/Picture;

    .line 4
    .line 5
    invoke-direct {v1}, Landroid/graphics/Picture;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    new-instance v3, Lcom/caverock/androidsvg/RenderOptions;

    .line 13
    .line 14
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    iput-object v4, v3, Lcom/caverock/androidsvg/RenderOptions;->a:Lcom/caverock/androidsvg/CSSParser$Ruleset;

    .line 19
    .line 20
    int-to-float p1, p1

    .line 21
    int-to-float p2, p2

    .line 22
    new-instance v5, Lcom/caverock/androidsvg/SVG$Box;

    .line 23
    .line 24
    const/4 v6, 0x0

    .line 25
    invoke-direct {v5, v6, v6, p1, p2}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    .line 26
    .line 27
    .line 28
    iput-object v5, v3, Lcom/caverock/androidsvg/RenderOptions;->b:Lcom/caverock/androidsvg/SVG$Box;

    .line 29
    .line 30
    new-instance p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 31
    .line 32
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v2, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->a:Landroid/graphics/Canvas;

    .line 36
    .line 37
    const/high16 p2, 0x42c00000    # 96.0f

    .line 38
    .line 39
    iput p2, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->b:F

    .line 40
    .line 41
    iput-object p0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->c:Lcom/caverock/androidsvg/SVG;

    .line 42
    .line 43
    iget-object p2, p0, Lcom/caverock/androidsvg/SVG;->a:Lcom/caverock/androidsvg/SVG$Svg;

    .line 44
    .line 45
    if-nez p2, :cond_0

    .line 46
    .line 47
    const-string p1, "SVGAndroidRenderer"

    .line 48
    .line 49
    const-string p2, "Nothing to render. Document is empty."

    .line 50
    .line 51
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    goto/16 :goto_5

    .line 55
    .line 56
    :cond_0
    iget-object v2, p2, Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;->o:Lcom/caverock/androidsvg/SVG$Box;

    .line 57
    .line 58
    iget-object v5, p2, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;->n:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 59
    .line 60
    iget-object v6, v3, Lcom/caverock/androidsvg/RenderOptions;->a:Lcom/caverock/androidsvg/CSSParser$Ruleset;

    .line 61
    .line 62
    const/4 v7, 0x1

    .line 63
    const/4 v8, 0x0

    .line 64
    if-eqz v6, :cond_2

    .line 65
    .line 66
    iget-object v6, v6, Lcom/caverock/androidsvg/CSSParser$Ruleset;->a:Ljava/util/ArrayList;

    .line 67
    .line 68
    if-eqz v6, :cond_1

    .line 69
    .line 70
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    goto :goto_0

    .line 75
    :cond_1
    move v6, v8

    .line 76
    :goto_0
    if-lez v6, :cond_2

    .line 77
    .line 78
    move v6, v7

    .line 79
    goto :goto_1

    .line 80
    :cond_2
    move v6, v8

    .line 81
    :goto_1
    if-eqz v6, :cond_3

    .line 82
    .line 83
    iget-object v6, v3, Lcom/caverock/androidsvg/RenderOptions;->a:Lcom/caverock/androidsvg/CSSParser$Ruleset;

    .line 84
    .line 85
    invoke-virtual {v0, v6}, Lcom/caverock/androidsvg/CSSParser$Ruleset;->b(Lcom/caverock/androidsvg/CSSParser$Ruleset;)V

    .line 86
    .line 87
    .line 88
    :cond_3
    new-instance v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 89
    .line 90
    invoke-direct {v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;-><init>()V

    .line 91
    .line 92
    .line 93
    iput-object v6, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->d:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 94
    .line 95
    new-instance v6, Ljava/util/Stack;

    .line 96
    .line 97
    invoke-direct {v6}, Ljava/util/Stack;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object v6, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->e:Ljava/util/Stack;

    .line 101
    .line 102
    iget-object v6, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->d:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 103
    .line 104
    invoke-static {}, Lcom/caverock/androidsvg/SVG$Style;->a()Lcom/caverock/androidsvg/SVG$Style;

    .line 105
    .line 106
    .line 107
    move-result-object v9

    .line 108
    invoke-virtual {p1, v6, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->S(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V

    .line 109
    .line 110
    .line 111
    iget-object v6, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->d:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 112
    .line 113
    iput-object v4, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->f:Lcom/caverock/androidsvg/SVG$Box;

    .line 114
    .line 115
    iput-boolean v8, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->h:Z

    .line 116
    .line 117
    iget-object v4, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->e:Ljava/util/Stack;

    .line 118
    .line 119
    new-instance v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 120
    .line 121
    invoke-direct {v9, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    new-instance v4, Ljava/util/Stack;

    .line 128
    .line 129
    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    .line 130
    .line 131
    .line 132
    iput-object v4, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->g:Ljava/util/Stack;

    .line 133
    .line 134
    new-instance v4, Ljava/util/Stack;

    .line 135
    .line 136
    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    .line 137
    .line 138
    .line 139
    iput-object v4, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->f:Ljava/util/Stack;

    .line 140
    .line 141
    iget-object v4, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->d:Ljava/lang/Boolean;

    .line 142
    .line 143
    if-eqz v4, :cond_4

    .line 144
    .line 145
    iget-object v6, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->d:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 146
    .line 147
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    iput-boolean v4, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->h:Z

    .line 152
    .line 153
    :cond_4
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->P()V

    .line 154
    .line 155
    .line 156
    new-instance v4, Lcom/caverock/androidsvg/SVG$Box;

    .line 157
    .line 158
    iget-object v6, v3, Lcom/caverock/androidsvg/RenderOptions;->b:Lcom/caverock/androidsvg/SVG$Box;

    .line 159
    .line 160
    invoke-direct {v4, v6}, Lcom/caverock/androidsvg/SVG$Box;-><init>(Lcom/caverock/androidsvg/SVG$Box;)V

    .line 161
    .line 162
    .line 163
    iget-object v6, p2, Lcom/caverock/androidsvg/SVG$Svg;->r:Lcom/caverock/androidsvg/SVG$Length;

    .line 164
    .line 165
    if-eqz v6, :cond_5

    .line 166
    .line 167
    iget v9, v4, Lcom/caverock/androidsvg/SVG$Box;->c:F

    .line 168
    .line 169
    invoke-virtual {v6, p1, v9}, Lcom/caverock/androidsvg/SVG$Length;->c(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    .line 170
    .line 171
    .line 172
    move-result v6

    .line 173
    iput v6, v4, Lcom/caverock/androidsvg/SVG$Box;->c:F

    .line 174
    .line 175
    :cond_5
    iget-object v6, p2, Lcom/caverock/androidsvg/SVG$Svg;->s:Lcom/caverock/androidsvg/SVG$Length;

    .line 176
    .line 177
    if-eqz v6, :cond_6

    .line 178
    .line 179
    iget v9, v4, Lcom/caverock/androidsvg/SVG$Box;->d:F

    .line 180
    .line 181
    invoke-virtual {v6, p1, v9}, Lcom/caverock/androidsvg/SVG$Length;->c(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    .line 182
    .line 183
    .line 184
    move-result v6

    .line 185
    iput v6, v4, Lcom/caverock/androidsvg/SVG$Box;->d:F

    .line 186
    .line 187
    :cond_6
    invoke-virtual {p1, p2, v4, v2, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->G(Lcom/caverock/androidsvg/SVG$Svg;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->O()V

    .line 191
    .line 192
    .line 193
    iget-object p1, v3, Lcom/caverock/androidsvg/RenderOptions;->a:Lcom/caverock/androidsvg/CSSParser$Ruleset;

    .line 194
    .line 195
    if-eqz p1, :cond_8

    .line 196
    .line 197
    iget-object p1, p1, Lcom/caverock/androidsvg/CSSParser$Ruleset;->a:Ljava/util/ArrayList;

    .line 198
    .line 199
    if-eqz p1, :cond_7

    .line 200
    .line 201
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    goto :goto_2

    .line 206
    :cond_7
    move p1, v8

    .line 207
    :goto_2
    if-lez p1, :cond_8

    .line 208
    .line 209
    goto :goto_3

    .line 210
    :cond_8
    move v7, v8

    .line 211
    :goto_3
    if-eqz v7, :cond_b

    .line 212
    .line 213
    iget-object p1, v0, Lcom/caverock/androidsvg/CSSParser$Ruleset;->a:Ljava/util/ArrayList;

    .line 214
    .line 215
    if-nez p1, :cond_9

    .line 216
    .line 217
    goto :goto_5

    .line 218
    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    :cond_a
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 223
    .line 224
    .line 225
    move-result p2

    .line 226
    if-eqz p2, :cond_b

    .line 227
    .line 228
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object p2

    .line 232
    check-cast p2, Lcom/caverock/androidsvg/CSSParser$Rule;

    .line 233
    .line 234
    iget-object p2, p2, Lcom/caverock/androidsvg/CSSParser$Rule;->c:Lcom/caverock/androidsvg/CSSParser$Source;

    .line 235
    .line 236
    sget-object v0, Lcom/caverock/androidsvg/CSSParser$Source;->f:Lcom/caverock/androidsvg/CSSParser$Source;

    .line 237
    .line 238
    if-ne p2, v0, :cond_a

    .line 239
    .line 240
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 241
    .line 242
    .line 243
    goto :goto_4

    .line 244
    :cond_b
    :goto_5
    invoke-virtual {v1}, Landroid/graphics/Picture;->endRecording()V

    .line 245
    .line 246
    .line 247
    return-object v1
.end method

.method public final d()Landroid/graphics/Picture;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->a:Lcom/caverock/androidsvg/SVG$Svg;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;->o:Lcom/caverock/androidsvg/SVG$Box;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Svg;->r:Lcom/caverock/androidsvg/SVG$Length;

    .line 6
    .line 7
    const/high16 v3, 0x42c00000    # 96.0f

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    iget-object v4, v2, Lcom/caverock/androidsvg/SVG$Length;->f:Lcom/caverock/androidsvg/SVG$Unit;

    .line 12
    .line 13
    sget-object v5, Lcom/caverock/androidsvg/SVG$Unit;->g:Lcom/caverock/androidsvg/SVG$Unit;

    .line 14
    .line 15
    if-eq v4, v5, :cond_0

    .line 16
    .line 17
    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Svg;->s:Lcom/caverock/androidsvg/SVG$Length;

    .line 18
    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Length;->f:Lcom/caverock/androidsvg/SVG$Unit;

    .line 22
    .line 23
    if-eq v4, v5, :cond_0

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Lcom/caverock/androidsvg/SVG$Length;->a(F)F

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-object v1, p0, Lcom/caverock/androidsvg/SVG;->a:Lcom/caverock/androidsvg/SVG$Svg;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Svg;->s:Lcom/caverock/androidsvg/SVG$Length;

    .line 32
    .line 33
    invoke-virtual {v1, v3}, Lcom/caverock/androidsvg/SVG$Length;->a(F)F

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    float-to-double v2, v0

    .line 38
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    double-to-int v0, v2

    .line 43
    float-to-double v1, v1

    .line 44
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 45
    .line 46
    .line 47
    move-result-wide v1

    .line 48
    double-to-int v1, v1

    .line 49
    invoke-virtual {p0, v0, v1}, Lcom/caverock/androidsvg/SVG;->c(II)Landroid/graphics/Picture;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    return-object v0

    .line 54
    :cond_0
    if-eqz v2, :cond_1

    .line 55
    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Lcom/caverock/androidsvg/SVG$Length;->a(F)F

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iget v2, v1, Lcom/caverock/androidsvg/SVG$Box;->d:F

    .line 63
    .line 64
    mul-float/2addr v2, v0

    .line 65
    iget v1, v1, Lcom/caverock/androidsvg/SVG$Box;->c:F

    .line 66
    .line 67
    div-float/2addr v2, v1

    .line 68
    float-to-double v0, v0

    .line 69
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 70
    .line 71
    .line 72
    move-result-wide v0

    .line 73
    double-to-int v0, v0

    .line 74
    float-to-double v1, v2

    .line 75
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 76
    .line 77
    .line 78
    move-result-wide v1

    .line 79
    double-to-int v1, v1

    .line 80
    invoke-virtual {p0, v0, v1}, Lcom/caverock/androidsvg/SVG;->c(II)Landroid/graphics/Picture;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    return-object v0

    .line 85
    :cond_1
    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Svg;->s:Lcom/caverock/androidsvg/SVG$Length;

    .line 86
    .line 87
    if-eqz v0, :cond_2

    .line 88
    .line 89
    if-eqz v1, :cond_2

    .line 90
    .line 91
    invoke-virtual {v0, v3}, Lcom/caverock/androidsvg/SVG$Length;->a(F)F

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    iget v2, v1, Lcom/caverock/androidsvg/SVG$Box;->c:F

    .line 96
    .line 97
    mul-float/2addr v2, v0

    .line 98
    iget v1, v1, Lcom/caverock/androidsvg/SVG$Box;->d:F

    .line 99
    .line 100
    div-float/2addr v2, v1

    .line 101
    float-to-double v1, v2

    .line 102
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 103
    .line 104
    .line 105
    move-result-wide v1

    .line 106
    double-to-int v1, v1

    .line 107
    float-to-double v2, v0

    .line 108
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 109
    .line 110
    .line 111
    move-result-wide v2

    .line 112
    double-to-int v0, v2

    .line 113
    invoke-virtual {p0, v1, v0}, Lcom/caverock/androidsvg/SVG;->c(II)Landroid/graphics/Picture;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    return-object v0

    .line 118
    :cond_2
    const/16 v0, 0x200

    .line 119
    .line 120
    invoke-virtual {p0, v0, v0}, Lcom/caverock/androidsvg/SVG;->c(II)Landroid/graphics/Picture;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    return-object v0
.end method

.method public final e(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgElementBase;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto/16 :goto_3

    .line 4
    .line 5
    :cond_0
    const-string v0, "\""

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    sub-int/2addr v1, v2

    .line 25
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v1, "\\\""

    .line 30
    .line 31
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const-string v0, "\'"

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    sub-int/2addr v1, v2

    .line 55
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const-string v1, "\\\'"

    .line 60
    .line 61
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    :cond_2
    :goto_0
    const-string v0, "\\\n"

    .line 66
    .line 67
    const-string v1, ""

    .line 68
    .line 69
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const-string v0, "\\A"

    .line 74
    .line 75
    const-string v1, "\n"

    .line 76
    .line 77
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-le v0, v2, :cond_7

    .line 86
    .line 87
    const-string v0, "#"

    .line 88
    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_7

    .line 94
    .line 95
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->c:Ljava/util/HashMap;

    .line 100
    .line 101
    if-eqz p1, :cond_6

    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-nez v1, :cond_3

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_3
    iget-object v1, p0, Lcom/caverock/androidsvg/SVG;->a:Lcom/caverock/androidsvg/SVG$Svg;

    .line 111
    .line 112
    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->c:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-eqz v1, :cond_4

    .line 119
    .line 120
    iget-object p1, p0, Lcom/caverock/androidsvg/SVG;->a:Lcom/caverock/androidsvg/SVG$Svg;

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_4
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-eqz v1, :cond_5

    .line 128
    .line 129
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    check-cast p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_5
    iget-object v1, p0, Lcom/caverock/androidsvg/SVG;->a:Lcom/caverock/androidsvg/SVG$Svg;

    .line 137
    .line 138
    invoke-static {v1, p1}, Lcom/caverock/androidsvg/SVG;->a(Lcom/caverock/androidsvg/SVG$SvgContainer;Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-object p1, v1

    .line 146
    goto :goto_2

    .line 147
    :cond_6
    :goto_1
    const/4 p1, 0x0

    .line 148
    :goto_2
    return-object p1

    .line 149
    :cond_7
    :goto_3
    const/4 p1, 0x0

    .line 150
    return-object p1
.end method

.method public final f(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->a:Lcom/caverock/androidsvg/SVG$Svg;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/caverock/androidsvg/SVG$Length;

    .line 6
    .line 7
    invoke-direct {v1, p1}, Lcom/caverock/androidsvg/SVG$Length;-><init>(F)V

    .line 8
    .line 9
    .line 10
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Svg;->s:Lcom/caverock/androidsvg/SVG$Length;

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string v0, "SVG document is empty"

    .line 16
    .line 17
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1
.end method

.method public final g(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->a:Lcom/caverock/androidsvg/SVG$Svg;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/caverock/androidsvg/SVG$Length;

    .line 6
    .line 7
    invoke-direct {v1, p1}, Lcom/caverock/androidsvg/SVG$Length;-><init>(F)V

    .line 8
    .line 9
    .line 10
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Svg;->r:Lcom/caverock/androidsvg/SVG$Length;

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string v0, "SVG document is empty"

    .line 16
    .line 17
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1
.end method
